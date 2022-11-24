test_that(
  "The spectral_signature() returns a tibble object.",
  {
    data(ukb_accel)
    p <- spectral_signature(ukb_accel[1:100, ])
    expect_true(inherits(p, "data.frame"))
  }
)

test_that(
  "The result of spectral_signature() is in log value when take_log is TRUE.",
  {
    data(ukb_accel)
    p <- spectral_signature(ukb_accel[1:100, ], take_log = TRUE)
    p1 <- spectral_signature(ukb_accel[1:100, ])
    expect_equal(p$X, log(p1$X))
  }
)
