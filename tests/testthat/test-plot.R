test_that(
  "The accel_plot() returns a ggplot object.",
  {
    data(ukb_accel)
    p <- accel_plot(ukb_accel[1:100, ])
    expect_true(inherits(p, "gg"))
  }
)

test_that(
  "The accel_plot() errors when no time or freq column.",
  {
    data(iris)
    expect_error(accel_plot(iris))
  }
)

test_that(
  "The accel_plot() is correct for time-series data.",
  {
    data(ukb_accel)
    p <- accel_plot(ukb_accel[1:100, ])
    expect_doppelganger("first-100-samples", p)
  }
)

test_that(
  "The accel_plot() returns a ggplot object with freq col.",
  {
    data(ukb_accel)
    ukb_accel <- ukb_accel |> select(X, Y, Z)
    ukb_accel$freq <- 1
    p <- accel_plot(ukb_accel[1:100, ])
    expect_true(inherits(p, "gg"))
  }
)
