#' The url from where the weather is downloaded.
url_base <- "http://climate.weather.gc.ca/climate_data/bulk_data_e.html"
#' The url parameters used in downloading.
url_params <- tibble::tribble(
  ~name, ~param,
  "format", "xml",
  "stationID", 888,
  "submit", "Download+Data",
  "timeframe", 2
)
