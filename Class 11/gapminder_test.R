library(tidyverse)
library(gapminder)
library(here)

gapminder
write_csv(gapminder, './gapminder.csv')
# View(gapminder)

# calculate mean life Exp per continent
gapminder_sum = gapminder %>%
  group_by(continent) %>%
  summarize(ave_lifeExp = mean(lifeExp))
# View(gapminder_sum)
write_csv(gapminder_sum, './gapminder_sum.csv')
gapminder_sum %>%
  ggplot(aes(x = continent, y = ave_lifeExp)) +
  geom_point() +
  theme_bw()

write_csv(gapminder_csv, here::here("gapminder_csv.csv"))



# download dataset from URL
data_url = "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
# download.file(url = data_url,
#               destfile = here::here("Class 11", "GreatestGivers.xls"))

# recommendation: use "basename"
file_name = basename(data_url)
download.file(url = data_url,
              destfile = here::here("Class 11", basename(data_url))) # corrupted

# read in
library(readxl)
philanthropists = read_excel(here::here("Class 11", file_name), trim_ws = TRUE)

View(philanthropists)

head(philanthropists)

# TODO for firas: find a way to remove whitespace in column 4



mri_file = here::here("Class 11", "Firas-MRI.xlsx")
mri = read_excel(mri_file, range = "A1:L12")
View(mri)
mri = mri[,-10]

mri = mri %>%
  pivot_longer(cols = "Slice 1" : "Slice 8",
               names_to = "Slice_no",
               values_to = "Value")