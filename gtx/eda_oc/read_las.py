import welly
import lasio
import glob
from base import ROOT_DIR
import pandas as pd
import matplotlib.pyplot as plt
#%%
well = lasio.read(ROOT_DIR / "gtx/data/well_log_files/Clean_LAS/US42051309880000_3067463_00118H1795402_W.LAS")
#%%
well.well["UWI"].value
#%%
las_files = (ROOT_DIR / "gtx/data/well_log_files/Clean_LAS").glob("*.las")
df_las_all = pd.DataFrame()
uwi_col = "UWI"
basin_col = "basin"
for las_file in las_files:
    las = lasio.read(las_file)
    las_df = las.df()
    uwi: str = las.well["UWI"].value
    las_df[uwi_col] = uwi
    las_df[basin_col] = "Eaglebine" if uwi.startswith("42") else "Duvernay"
    df_las_all = df_las_all.append(las_df)
df_las_all.to_csv("well_logs.csv")





