#
# Read electricity consumption data of 2 days (2007-02-01 and 2007-02-02)
#

# Read 2 day electricity consumption data, replace ? with NA
electricity_df <- read.table("data/household_power_consumption_two_days.txt", sep=";", header = F, na.strings = c("?"))
names(electricity_df) <- c("date", "time", "global_active_power", "global_reactive_power", "voltage", "global_intensity", "sub_metering_1", "sub_metering_2", "sub_metering_3")
# Turn date and time string into datetimes
electricity_df$datetime <- strptime(paste0(electricity_df$date, "-", electricity_df$time), format="%d/%m/%Y-%H:%M:%S")
electricity_df <- electricity_df[,c(10, 3:9)]

