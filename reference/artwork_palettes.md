# Color palettes inspired by iconic artworks

A dataset of color palettes derived from 20 iconic artworks across art
history, sourced from Color Lisa (colorlisa.com). Each row represents
one artwork and contains five hex color codes extracted from that
painting.

## Usage

``` r
artwork_palettes
```

## Format

A data frame with 20 rows and 9 variables:

- palette_name:

  Short snake_case name for the palette (e.g. "starry_night")

- artwork:

  Full title of the source artwork

- artist:

  Name of the artist

- hex1:

  First hex color code extracted from the artwork

- hex2:

  Second hex color code extracted from the artwork

- hex3:

  Third hex color code extracted from the artwork

- hex4:

  Fourth hex color code extracted from the artwork

- hex5:

  Fifth hex color code extracted from the artwork

- style:

  Art movement or style the artwork belongs to (e.g. "Impressionism",
  "Surrealism", "Pop Art")

## Source

Color Lisa <https://colorlisa.com>
