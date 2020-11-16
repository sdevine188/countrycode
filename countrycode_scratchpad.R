library(tidyverse)
library(countrycode)

# https://rdrr.io/cran/countrycode/man/codelist.html
# https://github.com/vincentarelbundock/countrycode

# inspect
codelist
codelist %>% glimpse()
codelist %>% select(country.name)
codelist %>% select(contains("un")) %>% glimpse()
countrycode(sourcevar = "MKD", origin = "iso3c", destination = "country.name") 
countrycode(sourcevar = "North Macedonia", origin = "country.name", destination = "iso3c") 
countrycode(sourcevar = "North Macedonia", origin = "country.name", destination = "iso3n") 
countrycode(sourcevar = "North Macedonia", origin = "country.name", destination = "un.name.en") 

