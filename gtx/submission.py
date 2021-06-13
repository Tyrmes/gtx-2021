from base import ROOT_DIR
import pandas as pd
from zipfile import ZipFile

# %%
uwi_col = "UWI"
tt_orig_col = "TRUE_TEMP"
# Load set_assign dataset for consistency check
pred = pd.read_csv(ROOT_DIR / "gtx/data/set_assign.csv")
# Filter the above data to only use the testing data
pred_test = pred[pred["Set"] == "Validation_Testing"]
print(pred_test.info())
# Load Duv predictions
duv_pred = (pd.read_csv(ROOT_DIR / "gtx/ml_duv/duv_pred.csv")
                .loc[:, [uwi_col, tt_orig_col]])
# Load Eaglebine predictions
egb_pred = pd.read_csv(ROOT_DIR / "gtx/machine_learning/ttpredict_egb.csv")
# Append dataframes
all_pred = duv_pred.append(egb_pred)
print(all_pred.info())
# %%
# Columns accepted for contest
tt_col = "TrueTemp"
# Rename
all_pred.rename(columns={tt_orig_col: tt_col}, inplace=True)
# Transform to Celsius
all_pred[tt_col] = (all_pred[tt_col] - 32) / 1.8
#%% save to csv
all_pred.to_csv(ROOT_DIR / "gtx/predictions.csv", index=False)
#%% save to zip
# ZipFile(ROOT_DIR / "gtx/predictions.zip", mode="w").write(ROOT_DIR / "gtx/predictions.csv")