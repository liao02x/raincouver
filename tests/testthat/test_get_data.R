context("Download daily weather data and convert to `data.frame`")

test_that("Check if return is `data.frame`.", {
  data <- get_data()
  expect_equal(class(data), "data.frame")
})

test_that("Check the shape of data.", {
  data <- get_data()
  expect_equal(nrow(data), 365)
  expect_equal(ncol(data), 7)
})

test_that("Check the type of data.", {
  data <- get_data()
  expect_equal(typeof(data[[1]]), "double")
  expect_equal(typeof(data[[2]]), "double")
  expect_equal(typeof(data[[3]]), "double")
  expect_equal(typeof(data[[4]]), "double")
  expect_equal(typeof(data[[5]]), "double")
  expect_equal(typeof(data[[6]]), "double")
  expect_equal(typeof(data[[7]]), "double")
})
