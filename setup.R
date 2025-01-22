#Install (if necessary) and load all required packages ----------------

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# vector of packages to load
packages <- c(
  'sf',
  'httr',
  'jsonlite',
  'nhdplusTools',
  #'rnoaa',
  "mapview",
  "ggpubr",
  "kableExtra",
  "plotly",
  "DT",
  "igraph",
  "nngeo",
  "dataRetrieval",
  "tigris",
  "data.table",
  "terra",
  "stars",
  "remotes",
  'devtools',
  'ggfortify',
  'ggrepel',
  "stars",
  "ggforce",
  "janitor",
  "rvest",
  "lwgeom",
  "zoo",
  "gridExtra",
  "akima",
  "RCurl",
  "geojsonsf",
  "scales",
  "tmap", 
  "maptiles",
  "flextable", 
  "ggseas",
  "furrr",
  "arcgisutils",
  "readxl",
  "SPEI",
  "elevatr",
  "dtplyr",
  "cowplot",
  "padr",
  "units",
  "leafem",
  "geosphere"
)

packages <- c(packages, "tidyverse")

packageLoad(packages)

# source all functions --------------------------

purrr::map(list.files(
  path = "src/",
  pattern = "*.R",
  full.names = TRUE,
  recursive = TRUE
),
source)