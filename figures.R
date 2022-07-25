data <- c(62305, 10771, 9734, 5717, 493)
namesp <- c("Human", "Mice", "Plant", "Insect", "Algae")
names(data)<- namesp
barplot(rev(data), horiz = T, border = NA,axes = F, main = "Chronobiology or circadian 
 publications in different phyla", col=c("chartreuse4", "deeppink2",
                                         "goldenrod2", "palevioletred1", "royalblue1"))
library(RColorBrewer)
