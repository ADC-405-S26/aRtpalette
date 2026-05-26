test_that("apply_palette returns correct number of colors", {
  #Creating a palette with 2 colors
  palette <- palette_from_hex(c("#264653", "#E9C46A"), name = "two")
  # Check if requesting five colors returns five colors
  expect_length(apply_palette(palette, n = 5), 5)
})

test_that("apply_palette returns a character vector of valid hex codes", {
  palette <- palette_from_hex(c("#264653", "#E9C46A"), name = "two")
  result <- apply_palette(palette, n = 3)
  # Check if the result is a character vector
  expect_type(result, "character")
  # Check if every returned color starts with a hex color symbol
  expect_true(all(grepl("^#", result)))
})

test_that("apply_palette returns original colors when n equals palette length", {
  palette <- palette_from_hex(c("#264653", "#E9C46A"), name = "two")
  # Asking for the same number of colors as the original palette
  result <- apply_palette(palette, n = 2)
  # Check if the original colors are returned
  expect_equal(result, c("#264653", "#E9C46A"))
})

test_that("apply_palette works with one requested color", {
  palette <- palette_from_hex(c("#264653", "#E9C46A"), name = "two")
  # Ask for only one color
  result <- apply_palette(palette, n = 1)
  # Check that the result contains exactly one color
  expect_length(result, 1)
})

test_that("apply_palette assertions catch bad inputs", {
  # Creating a valid palette for testing bad n values
  palette <- palette_from_hex(c("#264653"), name = "one")
  # Check if negative n is rejected
  expect_error(apply_palette(palette, n = -1), "Assertion on 'n' failed")
  #Check if character n is rejected
  expect_error(apply_palette(palette, n = "five"), "Assertion on 'n' failed")
  # Check if a non-artpalette object is rejected
  expect_error(apply_palette(list(), n = 3))
})

