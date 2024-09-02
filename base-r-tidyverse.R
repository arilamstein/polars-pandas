library(tidyverse)

df = read_csv('county_data.csv')

df

# Which counties have name "washington"?

# Tidyverse
df |>
  filter(county.name == "washington") |>
  select(county.name, state.name)

# Base R
df[df$county.name == "washington", c("county.name", "state.name")]
