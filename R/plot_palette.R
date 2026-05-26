#' Visualize a color palette as swatches
#' @importFrom ggplot2 ggplot aes geom_tile geom_text scale_fill_identity labs theme_void theme element_text
#' @importFrom rlang .data
#' @param palette An object of class "artpalette" from the function palette_from_hex()
#'
#' @returns A ggplot2 object showing color swatches with hex labels
#' @export
#'
#' @examples
#' palette<-palette_from_hex(c("#264653", "#2A9D8F", "#E9C46A"), name = "ocean")
#' plot_palette(palette)
plot_palette <- function(palette) {
checkmate::assert_class(palette, "artpalette")
  n <- length(palette$colors)
  df <- data.frame(
  x = seq_len(n),
  color = palette$colors,
  label = palette$colors
  )
  ggplot2::ggplot(df, ggplot2::aes(x = .data$x, y = 1, fill = .data$color, label = .data$label)) +
    ggplot2::geom_tile(width = 0.9, height = 0.9) +
    ggplot2::geom_text(ggplot2::aes(y = 0.45), size = 3, angle = 45, hjust = 1) +
    ggplot2::scale_fill_identity() +
    ggplot2::labs(title = paste("Palette:", palette$name)) +
    ggplot2::theme_void() +
    ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5, size = 13))
}

