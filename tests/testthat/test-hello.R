test_that(
  "The hello() returns 'Hello!'if name is NULL",
  {
    expect_equal(hello(), "Hello!")
  }
)

test_that(
  "The hello() returns 'Hello, name!'if name is given",
  {
    expect_equal(hello(name = "Lisa"), "Hello Lisa!")
  }
)

test_that(
  "The hello() returns invisible object is invisible is set to be TRUE",
  {
    expect_invisible(hello(name = "Lisa", invisible = TRUE))
  }
)
