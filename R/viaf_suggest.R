#' Suggest Authority Terms based on a text passed in a query
#'
#' This function searches for VIAF entries
#'
#' @export
#' @import dplyr
#'
#' @param query search term
#'
#' @examples
#' \dontrun{
#' viaf_suggest("Egelhaaf, Martin")
#' }

viaf_suggest <- function(query = NULL){
  if(is.null(query))
    stop ("No query provided")
  tt_GET(path = "viaf/AutoSuggest", query = list(query = query)) %>%
  tt_parse_js()
}
