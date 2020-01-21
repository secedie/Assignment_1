Species <- c("Loxodonta africana",
             "Lycaon pictus",
             "Thunnus alalunga",
             "Inia geoffrensis",
             "Panthera pardus orientalis",
             "Vulpes lagopus",
             "Canis lupus arctos",
             "Elephas maximus indicus",
             "Delphinapterus leucas",
             "Thunnus obesus")

Limb.Width <- abs(rnorm(10, 10, 10))

unitsW <- ifelse(rbinom(10,1,0.5), "mm", "cm")

Limb.Length <- abs(rnorm(10,100,100))

unitsL <- ifelse(rbinom(10,1,0.5), "mm", "cm")

MyData <- data.frame(Species,
                     Limb.Width,
                     unitsW,
                     Limb.Length, 
                     unitsL)

write.csv(MyData, "C:/Users/Shannon/Documents/Assignment_1/Data/measurements.csv")