library(dplyr)

mpg_df<- read.csv("MechaCar_mpg.csv")

lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mpg_df)

summary(lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mpg_df))

coil_df <- read.csv("Suspension_Coil.csv")

total_summary <- coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

t.test(coil_df["PSI"],mu=1500)

t.test(coil_df[coil_df$Manufacturing_Lot == "Lot1","PSI"],mu=1500)

t.test(coil_df[coil_df$Manufacturing_Lot == "Lot2","PSI"],mu=1500)

t.test(coil_df[coil_df$Manufacturing_Lot == "Lot3","PSI"],mu=1500)