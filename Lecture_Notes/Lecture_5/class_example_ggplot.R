library("tidyverse")
library("palmerpenguins")

remotes::install_github("bbc/bbplot")

## Install ThemePark from GitHub
remotes::install_github("MatthewBJane/theme_park")

## Install  visual impairment github package colorblindr
remotes::install_github("clauswilke/colorblindr")

## Now that we are familiar with palmerpenguins let’s make a scatter plot with flipper_length_mm on the x-axis, bill_length_mm on the y-axis, colored by species, and a smoother by adding a linear regression.

## Need to fix, review class lecture
penguins |>
  ggplot(
    aes(x = flipper_length_mm, y = bill_length_mm),
    color = species
  ) +
  geom_point() +
  geom_smooth(method = "lm")
library(palmerpenguins)
penguins +
  theme_dark(base_family = "Times")
