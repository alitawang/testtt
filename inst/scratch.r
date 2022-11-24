library(devtools)
library(lubridate)
library(dplyr)
library(ggplot2)

document()
document()

data(ukb_accel)

dt <- ukb_accel$time[1]

ukb_accel |>
  filter(time >= dt & time < dt + minutes(5)) |>
  accel_plot() +
    theme_minimal() +
    xlab("Time") +
    ylab("Acceleration (in gravities)")

ukb_accel |>
  filter(time >= dt & time < dt + minutes(5)) |>
  spectral_signature(take_log = TRUE) |>
  filter(freq <= 2) |>
  accel_plot()
