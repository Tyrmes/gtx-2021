# %% Importing libraries
import pandas as pd
import matplotlib.pyplot as plt
import geopandas as gpd
import contextily as cx
# import os

#%%
# os.environ['PROJ_LIB'] = r"C:\\[Users\karol\OneDrive\Documents\GitHub\gtx-2021\prototyping\resources\Scripts_gtx]\Anaconda3\Library\share"

# %% Don't need to run it
import pyproj
pyproj.Proj("+init=epsg:4326")

# %% Don't need to run it
from fiona.crs import from_epsg

from_epsg(2193)

# %% Read data
file = r"/gtx/data/Scripts_gtx\Duvernay well headers SPE April 21 2021 .xlsx "
df_well = pd.read_excel(file)
print(df_well.head())

# %% Subsetting dataframe
column_names = df_well.columns
print(column_names)
duvernay_geo = df_well[
    ['UWI ', 'Elevation Meters', 'TD meters ', 'SurfaceLongitude_NAD83',
     'SurfaceLatitude_NAD83',
     ]]
print(duvernay_geo.head())

# %% verify if there are missing values
print(df_well.isna().any())

# %% Converting to geopandas dataframe
gdf = gpd.GeoDataFrame(
    duvernay_geo, crs='epsg:4269', geometry=gpd.points_from_xy
    (duvernay_geo.SurfaceLongitude_NAD83, duvernay_geo.SurfaceLatitude_NAD83))

print(gdf.head())

#%%
gdf = gdf.to_crs(epsg=3857)
print(gdf.head())

# %% Plotting well points
ax = gdf.plot(markersize=7, figsize=(15, 12))
cx.add_basemap(ax)
plt.show()
