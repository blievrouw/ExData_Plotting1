#
# Reconstruct plot 2
#

source("read_data.R")

# Open file device
png(filename = "plot2.png", width = 480, height = 480)

# Plot global active power over time with line segment
plot(electricity_df$datetime, electricity_df$global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(electricity_df$datetime, electricity_df$global_active_power)

dev.off()