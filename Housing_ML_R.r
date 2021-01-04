df <- read.csv("Data Files/Linear Regression Dataset/House_Price.csv", header=TRUE)

head(df)

str(df)

summary(df)

hist(df$crime_rate)

pairs(~price+crime_rate+n_hot_rooms+rainfall, data=df)

barplot(table(df$airport))

barplot(table(df$waterbody))

barplot(table(df$bus_ter))

ul <- quantile(df$n_hot_rooms, 0.99) * 3

df$n_hot_rooms[df$n_hot_rooms > ul] <- ul
summary(df$n_hot_rooms)

ll <- quantile(df$rainfall, 0.01) * 0.3
df$rainfall[df$rainfall < ll] <- ll

summary(df$rainfall)

df$n_hos_beds[is.na(df$n_hos_beds)] <- mean(df$n_hos_beds, na.rm=TRUE)
summary(df$n_hos_beds)

plot(df$price, df$crime_rate)

df$crime_rate = log(1+df$crime_rate)
plot(df$price, df$crime_rate)

df$avg_dist = (df$dist1 + df$dist2 + df$dist3 + df$dist4)/4
summary(df$avg_dist)

df <- df[,-7:-10]
df <- df[,-14]
head(df)


