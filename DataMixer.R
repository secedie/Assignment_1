MData <- read.csv("C:/Users/Shannon/Documents/Assignment_1/Data/measurements.csv")

# Calculate limb volume, in cm^3, using the formula for a cylinder
MData$Volume <- pi * 
  (MData$Limb.Width/2 * ifelse(MData$unitsW == "cm", 1, 0.1))^2 *
  MData$Limb.Length * ifelse(MData$unitsL == "cm", 1, 0.1)


# Get the data in the same units to graph the relationship
width.cm <- MData$Limb.Width * ifelse(MData$unitsW == "cm", 1, 0.1)
length.cm <- MData$Limb.Length * ifelse(MData$unitsL == "cm", 1, 0.1)
plot.dat <- data.frame(width.cm, length.cm, MData$Species)

# Create the graph
library(ggplot2)
ggplot(data=plot.dat, aes(x=width.cm, y=length.cm)) +
  geom_point(size=6) +
  xlab("Limb Width (cm)") +
  ylab("Limb Length (cm)") +
  xlim(c(0,37)) +
  ggtitle("Limb dimensions for various species") +
  theme_classic() +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_text(aes(label=MData$Species, fontface=3), hjust=-0.1, vjust=-1, size=3.5)
