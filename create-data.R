# The dataset comes from the R packages "choroplethr" and "choroplethrMaps"
library(choroplethr)
library(choroplethrMaps)
library(dplyr)
library(readr)

data(df_pop_county)
data(county.regions)

head(df_pop_county)
head(county.regions)

df = inner_join(df_pop_county, county.regions) |>
  rename("population" = "value")

write_csv(df, 'county_data.csv')
