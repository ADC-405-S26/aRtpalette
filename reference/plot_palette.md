# Visualize a color palette as swatches

Visualize a color palette as swatches

## Usage

``` r
plot_palette(palette)
```

## Arguments

- palette:

  An object of class "artpalette" from the function palette_from_hex()

## Value

A ggplot2 object showing color swatches with hex labels

## Examples

``` r
palette<-palette_from_hex(c("#264653", "#2A9D8F", "#E9C46A"), name = "ocean")
plot_palette(palette)
```
