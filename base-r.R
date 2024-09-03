### Use Base R to:
1. Read in a CSV file of US Counties to a dataframe.
2. Subset the rows in the dataframe to counties named `Washington`.
3. Subset the columns in the dataframe to `county.name` and `state.name`.

df = read.csv('county_data.csv')
df[df$county.name == "washington", c("county.name", "state.name")]
