#' Form a url with parameters.
#' @param url The base url you want to add parameters to.
#' @param params The url parameters you want to add.
#' @return `string` contains formatted url.
format_url <- function(url, params) {
  for (i in 1:nrow(params))
    url <- urltools::param_set(url, params[[1]][i], params[[2]][i])
  url
}
#' Preprocess the xml file, select the data nodes only.
#' @param xml The xml file contains the weather data.
#' @return `xmlNode` contains weather data in xml format.
preprocess_xml <- function(xml) {
  r <- XML::xmlParse(xml)
  r <- XML::xmlRoot(r)
  r <- XML::getNodeSet(r, "//stationdata")
  r
}
