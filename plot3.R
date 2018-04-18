#
# Reconstruct plot 3
#

source("read_data.R")

# Open file device
png(filename = "plot3.png", width = 480, height = 480)

# Make overlapping line plots of energy submetering over time
with(electricity_df, plot(datetime, sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(electricity_df, lines(datetime, sub_metering_2, col="red"))
with(electricity_df, lines(datetime, sub_metering_3, col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

dev.off()