# Use the tidyverse library to:
# 1. Read in a CSV file of US Counties to a dataframe.
# 2. Subset the rows in the dataframe to counties named `Washington`.
# 3. Subset the columns in the dataframe to `county.name` and `state.name`.
library(tidyverse)

df = read_csv('county_data.csv')
df

df |>
  filter(county.name == "washington") |>
  select(county.name, state.name)
