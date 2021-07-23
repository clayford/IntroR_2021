homes <- read.csv("albemarle_real_estate.csv")
homes <- homes[,c("YearBuilt", "YearRemodeled", "Condition", "FinSqFt",
                  "Bedroom", "FullBath", "HalfBath", "LotSize", "TotalValue",
                  "City" )]
homes[sample(nrow(homes),10),"LotSize"] <- NA
write.csv(homes, file = "albemarle_homes.csv", row.names = FALSE)
