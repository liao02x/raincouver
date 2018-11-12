context("Count rainy days in the weather data.")

test_that("Check if return is reasonable.", {
  data <- get_data(2017)
  expect_equal(count_rainy(data, -1), 363)
})

test_that("Check if return is as expected.", {
  data <- get_data()
  expect_equal(count_rainy(data), 43)
})

test_that("Check if the data is processed correctly", {
  data <- get_data()
  expect_equal(count_rainy(data, 10000), 0)
})
