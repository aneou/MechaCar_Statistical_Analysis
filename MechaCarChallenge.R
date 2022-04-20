library(dplyr)

mpg_df<- read.csv("MechaCar_mpg.csv")

lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mpg_df)

summary(lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mpg_df))
