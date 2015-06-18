tt_GET <- function(path, ...){
  if (is.null(path))
    stop("Nothing to parse")
  uri <- "http://www.viaf.org/"
  # call api
  req <- httr::GET(uri, path = path, ...)
  # check for http status
  tt_check(req)
  req
}

tt_check <- function(req) {
  if (req$status_code < 400)
    return(invisible())
  stop(http_status(x)$message, "\n", call. = FALSE)
}

tt_parse_js <- function(req) {
  text <- httr::content(req, as = "text")
  if (identical(text, ""))
    stop("Not output to parse", call. = FALSE)
  jsonlite::fromJSON(text)
}
