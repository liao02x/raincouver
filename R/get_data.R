#' Download daily weather data and convert to `data.frame`.
#' @param y The year of the data you want.
#' @return `data.frame` contains weather data, including temperature and precipitation.
#' @export
get_data <- function(y = 2018) {
  url_params <- tibble::add_row(
    url_params,
    name = "Year",
    param = y
  )
  url_data <- format_url(url_base, url_params)
  df <- xmltodf(url_data)
  df
}
