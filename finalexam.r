?co2

head(CO2, 6)

boxplot(uptake ~ Plant, data = CO2, xlab = "Uptake",
   ylab = "Plant", main = "CO2 Uptake in Grass Plants")

par(mfrow = c(1,2))


hist(CO2$uptake[CO2$Type == "Quebec"],
    breaks = 9,    # suggestion for the number of bars
    main = "CO2 uptake for Quebec", 
    xlab = "",
    col = "red"
)

hist(CO2$uptake[CO2$Type == "Mississippi"],
    breaks = 9,    # suggestion for the number of bars
    main = "CO2 uptake for Mississippi", 
    xlab = "",
    col = "green"
)

par(mfrow = c(1,1))

summary(CO2$uptake[CO2$Type == "Mississippi"])
summary(CO2$uptake[CO2$Type == "Quebec"])