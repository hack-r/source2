#' Source2
#'
#' This function allows you to source only one segment of a file
#' @param file An R object.
#' @param start Line number to begin sourcing
#' @param end Line number to stop sourcing
#' @keywords source
#' @export
#' @examples
#' cat_function()

source2 <- function(file, start, end, ...) {
  # Sources just part of a file
  file.lines <- scan(file, what=character(), skip=start-1, nlines=end-start+1, sep='\n')
  file.lines.collapsed <- paste(file.lines, collapse='\n')
  source(textConnection(file.lines.collapsed), ...)}