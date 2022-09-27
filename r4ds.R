library(tidyverse)

t2_cases <- filter(table2, type == 'cases') %>% 
  rename(cases = count) %>% 
  arrange(country, year)

t2_population <- filter(table2, type == 'population') %>% 
  rename(population = count) %>% 
  arrange(country, year)

t2_cases_per_table <- tibble(
  year = t2_cases$year,
  country = t2_cases$country,
  cases = t2_cases$cases,
  population = t2_population$population
) %>% 
  mutate(cases_per_cap = cases / population * 10000) %>% 
  select(country, cases, cases_per_cap)

t2_cases_per_table