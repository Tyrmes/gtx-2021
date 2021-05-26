# %% Test minimum curvature survey function
# Minimum_curvature_survey calculates delta tvd
import numpy as np
import pandas as pd
from collections import namedtuple
from prototyping.utils.utilities import minimum_curvature_survey
from prototyping.utils.utilities import read_survey_data

Survey = namedtuple('Survey', 'md incl az')
SurveySolution = namedtuple('SurveySolution', 'north east tvd')
survey_1 = Survey(0, 0, 130.02398)
survey_2 = Survey(36.6, 0, 0.02398)
function_survey = minimum_curvature_survey(survey_1, survey_2,
                                           interpolate=False, md_interpolate=None)
print(function_survey.tvd)

# %% Test read_survey_data function
file = r"C:\Users\karol\OneDrive\Documents\GitHub\gtx-2021\prototyping\resources\well_sruveys\ACAC-167.dev"
survey_test = read_survey_data(file)
# print(survey_test['survey'])
survey_subset = survey_test['survey']
print(survey_subset['MD'])
# %% Convert read_survey_data output to dataframe
df = pd.DataFrame(survey_test['survey'])
df_subset = df[["MD", "INCL", "AZIM_TN"]]
df_subset = df_subset.drop(labels=0, axis=0)
TVD = df['TVD']
print(df_subset)
# print(TVD)

# %% Convert dataframe to tuples
subset = df_subset
tuples = [tuple(x) for x in subset.values]
print(tuples)

# %% Steps to convert from MD to SSTVD

# first step: define properly a survey, namedtuple format
Survey = namedtuple('Survey', 'md incl az')
list_t = []
for element in tuples:
    survey_e = Survey(*element)
    list_t.append(survey_e)
print(list_t[0])
first_md = list_t[0]
# %%
# second step: call minimum_curvature_survey function
# Third step: Add delta tvd to Z value for the specific survey
vector = np.array(-first_md.md)
n = len(list_t)

for i in range(n):
    if i + 1 == n:
        break
    else:
        survey_1 = list_t[i]
        survey_2 = list_t[i + 1]
        survey_cal = minimum_curvature_survey(survey_1, survey_2,
                                              interpolate=False, md_interpolate=None)
        delta_tvd = survey_cal.tvd
        vector = np.append(vector, delta_tvd)
tvd_t = np.cumsum(vector)
print(tvd_t)

# Fourth step: Substrate RKB from TVD
# Define RKB value
RKB = 20
sstvd = tvd_t - RKB
print(sstvd)