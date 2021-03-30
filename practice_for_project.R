
# Install Packages and Read Data ------------------------------------------

library(tidyverse)
library(palmerpenguins)
penguins_data <- penguins
penguins_data


# Scatterplots Comparing Islands ------------------------------------------

length_and_depth <- ggplot(data = penguins) +
  geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = island)) +
  labs(title = "Relationship Between Bill Length and Bill Depth on Islands",
       x = "Bill Length (mm)",
       y = "Bill Depth (mm)")
length_and_depth

flipper_and_mass <- ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)) +
  labs(title = "Relationship Between Flipper Length and Body Mass on Islands",
     x = "Bill Length (mm)",
     y = "Body Mass (g)")
flipper_and_mass


# Scatterplots with Best Fit Lines ----------------------------------------

flipper_and_massline <- ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g, color = island)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Best Fit Lines Comparing Flipper Length and Body Mass",
       x = "Flipper Length (mm)",
       y = "Body Mass (g)")
flipper_and_massline

length_and_depthline <- ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = island)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Best Fit Lines Comparing Bill Length and Bill Depth",
       x = "Bill Length (mm)",
       y = "Bill Depth (mm)", fill = "Island")
length_and_depthline

# Box Plots Comparing Islands ---------------------------------------------

flipper_boxplot <- ggplot(penguins, aes(x=island, y=flipper_length_mm, fill=island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="cadetblue3", outlier.shape=8,
               outlier.size=4)
flipper_boxplot

ggplot(penguins, aes(x=island, y=bill_length_mm, fill=island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="cadetblue3", outlier.shape=8,
               outlier.size=4)

ggplot(penguins, aes(x=island, y=bill_depth_mm, fill=island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="cadetblue3", outlier.shape=8,
               outlier.size=4)

ggplot(penguins, aes(x=island, y=body_mass_g, fill=island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="green", outlier.shape=8,
               outlier.size=4)


# Mutations ---------------------------------------------------------------

mm_values <- select(penguins_data, bill_length_mm, bill_depth_mm, flipper_length_mm,)
mm_values



# Literature cited --------------------------------------------------------

citation("palmerpenguins")
citation("ggplot2")
citation("dplyr")
RStudio.Version()
citation("readr")
