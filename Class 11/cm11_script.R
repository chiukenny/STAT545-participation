library(gapminder)
library(tidyverse)

#####

gap_asia_2007 = gapminder %>%
  filter(year == 2007, continent == "Asia")
gap_asia_2007

# write_csv(gap_asia_2007,"exported_file.csv")

write_csv(gap_asia_2007,
          here::here("Class 11", "data", "cm011_data", "exported_file.csv"))

read_csv(here::here("Class 11", "data","cm011_data","exported_file.csv"))

#####

url = "http://gattonweb.uky.edu/sheather/book/docs/datasets/magazines.csv"
read_csv(url)

#####

library("readxl") 

xls_url = "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
download.file(xls_url,
              here::here("Class 11", "data", "cm011_data", "some_file.xls"),
              mode = "wb")

file_name = basename(xls_url)
download.file(xls_url,
              here::here("Class 11", "data", "cm011_data", file_name),
              mode = "wb")

read_excel(here::here("Class 11", "data", "cm011_data", file_name))
