#' Get data on VIAF
#'
#' @param viaf viaf
#'
#' @export
#'
viaf_get <- function(viaf = NULL) {
  if(is.null(viaf))
    stop("No viaf provided")
  tt_GET(path = paste0("viaf/", viaf), httr::add_headers(Accept = "application/json+links")) %>%
    tt_parse_js()
}
