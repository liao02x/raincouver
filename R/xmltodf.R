#' Clean and tidy the xml data file, convert to `data.frame`.
#' @param xml The xml data file which contains the weather data only.
#' @return `data.frame` contains tidy weather data.
xmltodf <- function(xml) {
  r <- preprocess_xml(xml)
  df <- XML::xmlToDataFrame(r, rep("numeric", 11))
  df <- dplyr::mutate(
    df,
    day = as.numeric(XML::xmlSApply(r, XML::xmlGetAttr, "day")),
    month = as.numeric(XML::xmlSApply(r, XML::xmlGetAttr, "month")),
    year = as.numeric(XML::xmlSApply(r, XML::xmlGetAttr, "year")),
    temp_max = maxtemp,
    temp_min = mintemp,
    temp_ave = meantemp,
    rain = totalprecipitation
  )
  df <- dplyr::select(
    df,
    year, month, day,
    temp_max, temp_min, temp_ave,
    rain
  )
  df
}
