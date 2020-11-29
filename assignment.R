# Starter Code
# Load libraries
library(dplyr)
library(dbplyr)
# stablish a connection to a database, in this case is a SQLite database, just a file.
con <- DBI::dbConnect(RSQLite::SQLite(), "data/sample_data.sqlite")

# List tables in database
DBI::dbListTables(con)

## Using the functions from packages `dplyr` and `dbplyr`, find the Address of the Representer (Rep) that sums the larger Total

#################### Start your code here ######################



#################### End it here ######################

address <- dataset$Address # Save the address here

# Close the connection
DBI::dbDisconnect(con)

address <- stringr::str_trim(address)
save(address, file = "output.rda", version = 2)
