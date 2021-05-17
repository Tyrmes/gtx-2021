import pandas as pd
import dash
import dash_core_components as dcc
import dash_html_components as html
from plotly import tools
import plotly.graph_objs as go
import lasio


# Import and read Lasio Files
file = r"C:\Users\fredd\OneDrive - Escuela Superior Politécnica del Litoral\Escritorio\Python\Oil and Gas Data\ACAC-167.las"

data = lasio.read(file)




