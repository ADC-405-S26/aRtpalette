# Create a color palette from hex codes

Create a color palette from hex codes

## Usage

``` r
palette_from_hex(hex_codes, name = "my_palette")
```

## Arguments

- hex_codes:

  A character vector of hex color codes.

- name:

  A character string naming the pallete.

## Value

A list with class "artpalette" containing the name and colors

## Examples

``` r
palette_from_hex(c("#264653", "#2A9D8F", "#E9C46A"), name = "ocean")
#> $name
#> [1] "ocean"
#> 
#> $colors
#> [1] "#264653" "#2A9D8F" "#E9C46A"
#> 
#> attr(,"class")
#> [1] "artpalette"
```
