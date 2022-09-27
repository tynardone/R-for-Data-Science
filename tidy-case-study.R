library(tidyverse)

who #Redundant columns, odd variabl codes, many NA

who1 <- who %>% 
  pivot_longer(
    cols = new_sp_m014:newrel_f65,
    names_to = "key",
    values_to = "cases",
    values_drop_na = TRUE
  ) %>% 
  mutate(
    key = stringr::str_replace(key, "newrel", "new_rel")
  ) %>% 
  separate(key, c("new", "type", "sexage"), sep = "_") %>% 
  select(-new, -iso2, iso3) %>% 
  separate(sexage, c("sex", "age"), sep = 1)

who1

