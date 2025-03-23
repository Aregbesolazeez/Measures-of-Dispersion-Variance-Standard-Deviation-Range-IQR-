# Generate delivery times (in minutes)
courier_A <- c(25, 27, 30, 32, 28, 26, 29, 31, 27, 26)  # More consistent
courier_B <- c(20, 40, 35, 25, 30, 50, 45, 22, 38, 28)  # More variable

# Compute dispersion measures
range_A <- max(courier_A) - min(courier_A)
range_B <- max(courier_B) - min(courier_B)

variance_A <- var(courier_A)
variance_B <- var(courier_B)

sd_A <- sd(courier_A)
sd_B <- sd(courier_B)

iqr_A <- IQR(courier_A)
iqr_B <- IQR(courier_B)

# Display results
"Courier A"
cat("Range:", range_A, "\n")
cat("Variance:", variance_A, "\n")
cat("SD:", sd_A, "\n")
cat("IQR:", iqr_A, "\n")
"Courier B"
cat("Range:", range_B, "\n")
cat("Variance:", variance_B, "\n")
cat("SD:", sd_B, "\n")
cat("IQR:", iqr_B, "\n")

library(ggplot2)

# Create dataframe
df <- data.frame(
  Courier = rep(c("Courier A", "Courier B"), each=10),
  Delivery_Time = c(courier_A, courier_B)
)

# Boxplot comparison
ggplot(df, aes(x=Courier, y=Delivery_Time, fill=Courier)) +
  geom_boxplot() +
  ggtitle("Delivery Time Variation: Courier A vs. Courier B") +
  xlab("Courier") +
  ylab("Delivery Time (Minutes)") +
  theme_minimal()

