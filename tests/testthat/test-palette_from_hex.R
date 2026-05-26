test_that("palette_from_hex returns correct class", {
  # Creating a palette object using valid hex colors
  palette <- palette_from_hex(c("#264653", "#2A9D8F"), name = "ocean")
  #checking if the output has the custome artpallette class
  expect_s3_class(palette, "artpalette")
})

test_that("palette_from_hex stores name and colors correctly", {
  #
  palette <- palette_from_hex(c("#264653", "#2A9D8F"), name = "ocean")
  # Check if the palette name was stored correctly
  expect_equal(palette$name, "ocean")
  # Check if the hex colors were stored correctly
  expect_equal(palette$colors, c("#264653", "#2A9D8F"))
})

test_that("palette_from_hex uses default name", {
  # Creating a palette without giving a name
 palette <- palette_from_hex(c("#FF5733"))

 # Check that the function uses the default palette name
  expect_equal(palette$name, "my_palette")
})

test_that("palette_from_hex accepts three-digit hex codes", {
  # Creating a palette using short hex color codes
  palette <- palette_from_hex(c("#FFF", "#000"), name = "basic")
  # Check if the short hex colors were accepted and stored
  expect_equal(palette$colors, c("#FFF", "#000"))
})

test_that("palette_from_hex assertions catch bad inputs", {
  # Check if invalid hex text causes an error
  expect_error(palette_from_hex(c("notahex"), name = "bad"))
  # Check if numeric color input is rejected
  expect_error(palette_from_hex(123, name = "bad"), "Assertion on 'hex_codes' failed")
  # Check if a numeric palette name is rejected
  expect_error(palette_from_hex(c("#FF5733"), name = 99), "Assertion on 'name' failed")
})
