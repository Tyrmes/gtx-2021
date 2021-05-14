from collections import namedtuple
from math import radians, tan, cos, acos, sin
import pandas as pd
from io import StringIO


Survey = namedtuple('Survey', 'md incl az')
SurveySolution = namedtuple('SurveySolution', 'north east tvd')


def minimum_curvature_survey(survey_1: Survey, survey_2: Survey,
                             interpolate=False, md_interpolate=None) -> SurveySolution:

    if survey_1.md < survey_2.md:
        md_1 = survey_1.md
        md_2 = survey_2.md
        incl_1 = radians(survey_1.incl)
        incl_2 = radians(survey_2.incl)
        az_1 = radians(survey_1.az)
        az_2 = radians(survey_2.az)

        # Straight well conditions
        if incl_1 == 0.0 and incl_2 == 0.0 and az_1 == 0.0 and az_2 == 0.0:
            if not interpolate:
                s_12 = md_2 - md_1
                return SurveySolution(0, 0, -s_12)
            else:
                if md_2 > md_interpolate > md_1:
                    s_interp = md_interpolate - md_1
                    return SurveySolution(0, 0, -s_interp)
        # Deviated well conditions
        else:
            # Arc length between survey 1 and 2
            s_12 = md_2 - md_1
            # Calculate dog leg angle
            beta = acos(cos(incl_2 - incl_1) - (sin(incl_1) * sin(incl_2) * (1 - cos(az_2 - az_1))))

            rf = 2 * tan(beta / 2) / beta

            if not interpolate:
                north = (s_12 / 2) * (sin(incl_1)*cos(az_1) + sin(incl_2)*cos(az_2)) * rf

                east = (s_12 / 2) * (sin(incl_1)*sin(az_1) + sin(incl_2)*sin(az_2)) * rf

                tvd = (s_12 / 2) * (cos(incl_1) + cos(incl_2)) * rf

                return SurveySolution(north=north, east=east, tvd=-tvd)
            else:
                if md_2 >= md_interpolate > md_1:
                    s_interp = md_interpolate - md_1
                    beta_interp = s_interp * beta / s_12

                    north_interp = s_interp * (sin(beta - beta_interp) * sin(incl_1) * cos(az_1) +
                                               sin(beta_interp) * sin(incl_2) * cos(az_2)) / sin(beta)

                    east_interp = s_interp * (sin(beta - beta_interp) * sin(incl_1) * sin(az_1) +
                                              sin(beta_interp) * sin(incl_2) * sin(az_2)) / sin(beta)

                    tvd_interp = s_interp * (sin(beta - beta_interp) * cos(incl_1) +
                                             sin(beta_interp) * cos(incl_2)) / sin(beta)

                    return SurveySolution(north=north_interp, east=east_interp, tvd=-tvd_interp)
                elif md_interpolate <= md_1:
                    raise ValueError(f'MD to interpolate:{md_interpolate} is less than or equal to survey 1 md:{md_1}')
                else:
                    raise ValueError(f'MD to interpolate:{md_interpolate} is higher than survey 2 md:{md_2}')
    else:
        raise ValueError('Survey_2 md is less than survey 1')


def read_survey_data(file_name):
    template_numeric = {
        'surf_x': '# WELL HEAD X-COORDINATE:',
        'surf_y': '# WELL HEAD Y-COORDINATE:',
        'KB': '# WELL DATUM (KB, Kelly bushing, from MSL):',
    }
    template_strings = {
        'well_name': '# WELL NAME:',
        'survey_name': '# DEFINITIVE SURVEY:',
        'well_type': '# WELL TYPE:',
    }

    other_survey_information = []
    well_dict = {}
    count = 0
    with open(file_name, 'r') as f:

        has_started_survey_cols = False
        has_finished_header = False

        for line in f:
            count += 1
            # print(f'getting line {count}')
            found_pattern = False
            if not has_started_survey_cols:

                while not found_pattern:

                    for key_num, pattern_num in template_numeric.items():
                        if line.startswith(pattern_num):
                            value_num = list_of_floats_in_string(line)
                            well_dict[key_num] = value_num[0]
                            # print(f'found numeric pattern in line {count}')
                            found_pattern = True
                    if found_pattern:
                        break

                    for key_str, pattern_str in template_strings.items():
                        if line.startswith(pattern_str):
                            value_str = line.replace(pattern_str, "").strip()
                            well_dict[key_str] = value_str
                            # print(f'found string pattern in line {count}')
                            found_pattern = True
                            break
                    if found_pattern:
                        break

                    if line.startswith('# '):
                        other_survey_information.append(line)
                        found_pattern = True
                    elif line.startswith('#='):
                        has_started_survey_cols = True
                        # print(f'Has started column lines in line {count}')
                        found_pattern = True

            elif has_started_survey_cols & (not has_finished_header):
                well_dict['other_information'] = other_survey_information
                survey_columns = line.split()
                indexes_of_cols = [x for x in range(len(survey_columns))]
                helper_cols = dict(zip(survey_columns, indexes_of_cols))
                survey_dict = {k: [] for k in survey_columns}
                well_dict['survey'] = survey_dict
                has_finished_header = True
            elif line.startswith('#='):
                continue
            else:
                survey_values = list_of_floats_in_string(line)
                for survey_col, values_list in well_dict['survey'].items():
                    well_dict['survey'][survey_col].append(survey_values[helper_cols[survey_col]])

    return well_dict


def list_of_floats_in_string(text: str):
    floats = []
    splitted_values = text.split()
    for value in splitted_values:
        try:
            floats.append(float(value))
        except ValueError:
            pass
    return floats


def read_well_tops_petrel(filename) -> pd.DataFrame:
    header_cols = []
    started_header = False
    finished_header = False
    with open(filename, 'r') as f:
        while not finished_header:
            line = f.readline().replace('\n', '')
            if line == 'BEGIN HEADER':
                started_header = True
                continue

            if line == 'END HEADER':
                finished_header = True
                started_header = False

            if started_header and not finished_header:
                line_split = line.split(',')
                if len(line_split) > 1:
                    header_cols.append(line_split[-1])
                    continue
                elif len(line_split) == 1:
                    header_cols.append(line_split[0])
                    continue

        # Reading the rest of the lines as a file to use pandas read_csv
        remaining_lines = f.readlines()
        # remaining_lines.insert(0, '\t'.join(header_cols))
        data = StringIO(''.join(remaining_lines))
        return pd.read_csv(data, names=header_cols, header=None, delim_whitespace=True)
