test_that("palette_from_hex returns correct class", {
  palette <- palette_from_hex(c("#264653", "#2A9D8F"), name = "ocean")
  expect_s3_class(palette, "artpalette")
})

test_that("palette_from_hex stores name and colors correctly", {
  palette <- palette_from_hex(c("#264653", "#2A9D8F"), name = "ocean")
  expect_equal(palette$name, "ocean")
  expect_equal(palette$colors, c("#264653", "#2A9D8F"))
})

test_that("palette_from_hex uses default name", {
  palette <- palette_from_hex(c("#FF5733"))
  expect_equal(palette$name, "my_palette")
})

test_that("palette_from_hex accepts three-digit hex codes", {
  palette <- palette_from_hex(c("#FFF", "#000"), name = "basic")
  expect_equal(palette$colors, c("#FFF", "#000"))
})

test_that("palette_from_hex assertions catch bad inputs", {
  expect_error(palette_from_hex(c("notahex"), name = "bad"))
  expect_error(palette_from_hex(123, name = "bad"), "Assertion on 'hex_codes' failed")
  expect_error(palette_from_hex(c("#FF5733"), name = 99), "Assertion on 'name' failed")
})
