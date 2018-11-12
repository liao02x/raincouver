raincouver10 <-
  dplyr::bind_rows(
    purrr::map(
      purrr::map(
        stringr::str_c(".\\", list.files(pattern = "xml$")),
        xml2::read_xml
      ),
      xmltodf
    )
  )
devtools::use_data(raincouver10)

