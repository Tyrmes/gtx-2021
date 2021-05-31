import welly
from base import ROOT_DIR
import pandas as pd
import matplotlib.pyplot as plt
#%%
las_file = ROOT_DIR / "gtx/data/well_log_files/Clean_LAS/US42013332560000_3067463_00017H173363.LAS"
well = welly.Well.from_las(las_file)
well.plot()
plt.show()



