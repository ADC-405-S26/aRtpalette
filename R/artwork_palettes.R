#' Color palettes inspired by iconic artworks
#'
#' A dataset of color palettes derived from 20 iconic artworks across
#' art history, sourced from Color Lisa (colorlisa.com). Each row
#' represents one artwork and contains five hex color codes extracted
#' from that painting.
#'
#' @format A data frame with 20 rows and 9 variables:
#' \describe{
#'   \item{palette_name}{Short snake_case name for the palette (e.g. "starry_night")}
#'   \item{artwork}{Full title of the source artwork}
#'   \item{artist}{Name of the artist}
#'   \item{hex1}{First hex color code extracted from the artwork}
#'   \item{hex2}{Second hex color code extracted from the artwork}
#'   \item{hex3}{Third hex color code extracted from the artwork}
#'   \item{hex4}{Fourth hex color code extracted from the artwork}
#'   \item{hex5}{Fifth hex color code extracted from the artwork}
#'   \item{style}{Art movement or style the artwork belongs to
#'   (e.g. "Impressionism", "Surrealism", "Pop Art")}
#' }
#' @source Color Lisa \url{https://colorlisa.com}
"artwork_palettes"
