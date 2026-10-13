library("palmerpenguins")
library("dplyr")
library("forcats")
library("ggplot2")
glimpse(penguins)
pen_dat <- penguins |> 
  group_by(species) |>
  summarize(
  avg_bill(mean(bill_length_mm, na.rm = TRUE))
  n = n() 
  )
pen_dat

  pen_dat |>
  mutate(species = fct_reorder(species, avg_bill)) |>
  ggplot(aes(x = avg.bill, y = species)) +
  geom_pont()

  pen_dat |>
  mutate(species = fct_reorder(species, avg_bill)) |>
  mutate(species = fct_rev(species))
  ggplot(aes(x = avg.bill, y = species)) +
  geom_pont()

  pen_dat |>
  mutate(species = fct_reorder(species, avg_bill, .desc = TRUE)) |>
  ggplot(aes(x = avg.bill, y = species)) +
  geom_pont()
