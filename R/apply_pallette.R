#' Extract colors from a palette
#'
#' @param palette An object of class "artpalette" from palette_from_hex()
#' @param n A positive integer — how many colors you need
#'
#' @returns A character vector of n hex color codes
#' @export
#'
#' @examples
#' palette <- palette_from_hex(c("#264653", "#2A9D8F", "#E9C46A"), name = "ocean")
#' apply_palette(palette, n = 5)
apply_palette <- function(palette, n) {

  checkmate::assert_class(palette, "artpalette")
  checkmate::assert_integerish(n, lower=1, len=1)
  grDevices::colorRampPalette(palette$colors)(n)
}
