
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer is to provide an overview of your R library setup.
It is a toy package for a workshop and not meant for serious use.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("khdavidson/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)

lib_summary()
#>                                                                        Library
#> 1                                           C:/Program Files/R/R-4.3.3/library
#> 2                          C:/Users/DAVIDSONKA/AppData/Local/R/win-library/4.3
#> 3 C:/Users/DAVIDSONKA/AppData/Local/Temp/1/Rtmp2zoc8m/temp_libpath3aac3ed97cbe
#>   n_packages
#> 1         29
#> 2        259
#> 3          1

# Or to calculate sizes:

lib_summary(sizes=T)
#>                                                                        Library
#> 1                                           C:/Program Files/R/R-4.3.3/library
#> 2                          C:/Users/DAVIDSONKA/AppData/Local/R/win-library/4.3
#> 3 C:/Users/DAVIDSONKA/AppData/Local/Temp/1/Rtmp2zoc8m/temp_libpath3aac3ed97cbe
#>   n_packages  lib_size
#> 1         29  60184008
#> 2        259 836635983
#> 3          1     13284
```
