#' Create a color palette from hex codes
#'
#' @param hex_codes A character vector of hex color codes.
#' @param name A character string naming the pallete.
#'
#' @returns
#' A list with class "artpalette" containing the name and colors
#' @export
#'
#' @examples
#' palette_from_hex(c("#264653", "#2A9D8F", "#E9C46A"), name = "ocean")
palette_from_hex <- function(hex_codes, name = "my_palette") {
  checkmate::assert_character((hexcodes, min.len=1))
  checkmate::assert_string(name)
  valid<-grep1("^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$", hex_codes)

  if (!all(valid)){
    stop("Invalid hex codes:", paste (hex_codes[!valid], collapse=", "))
  }
  structure(list(name=name,colors=hex_codes), class="artpallette")
  }

  }
