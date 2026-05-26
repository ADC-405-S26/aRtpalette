# Extract colors from a palette

Extract colors from a palette

## Usage

``` r
apply_palette(palette, n)
```

## Arguments

- palette:

  An object of class "artpalette" from palette_from_hex()

- n:

  A positive integer — how many colors you need

## Value

A character vector of n hex color codes

## Examples

``` r
palette <- palette_from_hex(c("#264653", "#2A9D8F", "#E9C46A"), name = "ocean")
apply_palette(palette, n = 5)
#> [1] "#264653" "#287171" "#2A9D8F" "#89B07C" "#E9C46A"
```
