library(tidyverse)
library(nycflights13)

# Tibbles:
#  airlines
#  airports
#  planes
#  weather

flights2 <- flights %>% 
  select(year:day, hour, origin, dest, tailnum, carrier)
flights2

flights2 %>% 
  left_join(airlines, by = "carrier")

x <- tribble(
  ~key, ~val_x,
  1, "x1",
  2, "x2",
  3, "x3"
)
y <- tribble(
  ~key, ~val_y,
  1, "y1",
  2, "y2",
  3, "y3"
)
