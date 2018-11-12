#' Count rainy days in the weather data.
#' @param .data The weather data contains precipitation.
#' @param rf The least amount of precipitation needed to be a rainy day.
#' @return Integer, number of rainy days.
#' @export
count_rainy <- function(.data, rf = 10) {
  sum(.data["rain"] > rf, na.rm = TRUE)
}
