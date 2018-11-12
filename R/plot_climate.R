#' Plot the temperature range and preticipation amount.
#' @param .data The weather data contains temperature and precipitation.
#' @return This function returns nothing.
#' @export
plot_climate <- function(.data) {
  .data <- dplyr::mutate(
    .data,
    mon = factor(
      month,
      labels = c("Jan","Fev","Mar","Apr",
                 "May","Jun","Jul","Aug",
                 "Sep", "Oct","Nov","Dec")
    )
  )

  ggplot2::ggplot(.data, ggplot2::aes(x = mon, y = temp_ave)) +
    ggplot2::geom_violin(fill = "orange") +
    ggplot2::geom_point(ggplot2::aes(size = rain), color = "blue", position = "jitter") +
    ggplot2::ggtitle ("Temperature distribution by month") +
    ggplot2::xlab("Month") +
    ggplot2::ylab ("Average temperature ( \u00B0C )")

}
