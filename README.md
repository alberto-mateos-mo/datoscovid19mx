
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datoscovid19mx

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

`datoscovid19mx` is a package that cointains the data for COVID19 in
Mexico, this data is published by the [Dirección General de
Epidemiología](https://www.gob.mx/salud/acciones-y-programas/direccion-general-de-epidemiologia).

Data is updated daily, if you use the package please update it daily.

The goal is to give easy access to the available information.

Last update: 2020-10-26 21:44:16

## Installation

Install (or update) from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("alberto-mateos-mo/datoscovid19mx")
```

## Data

The package contains the following:

  - `covidmx`: A dataframe containing data ‘as-is’, downloaded from
    [here.](https://www.gob.mx/salud/documentos/datos-abiertos-152127)

  - `diccionarios`: A list containing data dictionaries.

Please note that the ‘datoscovid19mx’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
