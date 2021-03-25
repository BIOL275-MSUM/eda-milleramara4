
# Install Packages and Read Data ------------------------------------------

library(tidyverse)
library(palmerpenguins)
penguins_data <- penguins
penguins_data


# Scatterplots Comparing Islands ------------------------------------------

length_and_depth <- ggplot(data = penguins) +
  geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = island))
length_and_depth

flipper_and_mass <- ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island))
flipper_and_mass


# Scatterplots with Best Fit Lines ----------------------------------------

flipper_and_massline <- ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g, color = island)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Relationship Between Size Measurements and Island",
       x = "Flipper Length (mm)",
       y = "Body Mass (g)")
flipper_and_massline

length_and_depthline <- ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = island)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Relationship Between Size Measurements and Island",
       x = "Bill Length (mm)",
       y = "Bill Depth (mm)")
length_and_depthline

# Box Plots Comparing Islands ---------------------------------------------

flipper_boxplot <- ggplot(penguins, aes(x=island, y=flipper_length_mm, color = island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="cadetblue3", outlier.shape=8,
               outlier.size=4)
flipper_boxplot


# Literature cited --------------------------------------------------------

citation("palmerpenguins")
citation("ggplot2")
citation("dplyr")
RStudio.Version()
citation("readr")
