#
# Reconstruct plot 4
#

source("read_data.R")

# Open file device
png(filename = "plot4.png", width = 480, height = 480)

# Arrange plots in 2 columns (of 2 rows)
par(mfcol=c(2,2), mar=c(4,4,1,1), oma=c(1,0,1,1))

# Plot global active power over time with line segment
plot(electricity_df$datetime, electricity_df$global_active_power, type="n", xlab="", ylab="Global Active Power")
lines(electricity_df$datetime, electricity_df$global_active_power)

# Make overlapping line plots of energy submetering over time
with(electricity_df, plot(datetime, sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(electricity_df, lines(datetime, sub_metering_2, col="red"))
with(electricity_df, lines(datetime, sub_metering_3, col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty = "n")

# Plot voltage over time
with(electricity_df, plot(datetime, voltage, type="l"))

# Plot global reactive power over time
with(electricity_df, plot(datetime, global_reactive_power, type="l"))

dev.off()