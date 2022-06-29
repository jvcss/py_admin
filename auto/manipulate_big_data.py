# ------------------------------------------------------------------
# extraindo arquivo
# ------------------------------------------------------------------
from os import curdir
import zipfile
with zipfile.ZipFile("archvice.zip","r") as zip_ref:
    zip_ref.extractall(curdir)
# ------------------------------------------------------------------

## normalizing col
import numpy
