library(tidymodels)
library(tidyverse)
library(magrittr)
library(summarytools)
library(palmerpenguins)
library(ggridges)

penguins %>% 
  ggplot(
    aes(
      x = bill_length_mm, 
      y = species, 
      fill = species)
  ) + 
  geom_density_ridges(show.legend = F) + 
  theme_minimal() + 
  labs(
    x = "Bill length (mm)", 
    title = "Penguin Bill Length in Palmerpenguins"
  ) +
  theme(plot.title = element_text(size = 13, face = "bold"))
ggsave("penguins.pdf", width = 10, height = 6, units = "in")
getwd()
