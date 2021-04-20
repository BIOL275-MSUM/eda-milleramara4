
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
     x = "Flipper Length (mm)",
     y = "Body Mass (g)")
flipper_and_mass

ggplot(data = penguins) +
  geom_point(mapping = aes(x = island, y = species)) +
  labs(title = "Relationship Between Flipper Length and Body Mass on Islands",
       x = "Flipper Length (mm)",
       y = "Body Mass (g)")


# Scatterplots with Best Fit Lines ----------------------------------------

flipper_and_massline <- ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g, color = island)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Best Fit Lines Comparing Flipper Length and Body Mass",
       x = "Flipper Length (mm)",
       y = "Body Mass (g)", fill = "Island")
flipper_and_massline

length_and_depthline <- ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = island)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Best Fit Lines Comparing Bill Length and Bill Depth",
       x = "Bill Length (mm)",
       y = "Bill Depth (mm)", fill = "Island")
length_and_depthline

# Stacked Bar Chart

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(alpha = 0.8) +
  theme_minimal() +
  facet_wrap(~species, ncol = 1)+
  labs(title = "Species of Penguin on Each Island",
       x = "Island",
       y = "Count", fill = "Species")

# Box Plots Comparing Islands ---------------------------------------------

flipper_boxplot <- ggplot(penguins, aes(x=island, y=flipper_length_mm, fill = island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="cadetblue3", outlier.shape=8,
               outlier.size=4)+
  labs(title = "Comparing Flipper Length and Island",
       x = "Island",
       y = "Flipper Length (mm)", fill = "Island")
flipper_boxplot

billlength_boxplot <- ggplot(penguins, aes(x=island, y=bill_length_mm, fill=island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="coral1", outlier.shape=8,
               outlier.size=4)+
  labs(title = "Comparing Bill Length and Island",
       x = "Island",
       y = "Bill Length (mm)", fill = "Island")
billlength_boxplot

billdepth_boxplot <- ggplot(penguins, aes(x=island, y=bill_depth_mm, fill=island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="coral", outlier.shape=8,
               outlier.size=4)+
  labs(title = "Comparing Bill Depth and Island",
       x = "Island",
       y = "Bill Depth (mm)", fill = "Island")
billdepth_boxplot

bodymass_boxplot <- ggplot(penguins, aes(x=island, y=body_mass_g, fill=island)) + 
  geom_boxplot(notch=FALSE, outlier.colour="green", outlier.shape=8,
               outlier.size=4)+
  labs(title = "Comparing Body Mass and Island",
       x = "Island",
       y = "Body Mass (g)", fill = "Island")
bodymass_boxplot



# Mutations ---------------------------------------------------------------

mm_values <- select(penguins_data, bill_length_mm, bill_depth_mm, flipper_length_mm,)
mm_values

ggplot(penguins_data, aes(fill=island, y=s, x=bill_length_mm)) + 
  geom_bar(position="dodge", stat="identity")

island_bill_length <- select(penguins_data, island, bill_length_mm)
island_bill_length

filter(island_bill_length, island == "Torgersen")

island_bill_length2 <- select(island_bill_length, bill_length_mm)
island_bill_length2
mean(island_bill_length2)

group_by(penguins_data, island)

# Literature cited --------------------------------------------------------

citation("palmerpenguins")
citation("ggplot2")
citation("dplyr")
RStudio.Version()
citation("readr")
