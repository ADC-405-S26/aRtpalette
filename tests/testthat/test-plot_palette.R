test_that("plot_palette returns a ggplot object", {
  # Creating a palette object to visualize
  palette <- palette_from_hex(c("#264653", "#2A9D8F"), name = "ocean")
  # Check if the function returns a ggplot object
  expect_s3_class(plot_palette(palette), "ggplot")
})

test_that("plot_palette title includes palette name", {
  # Creating a palette with a specific name
  palette <- palette_from_hex(c("#264653"), name = "mysea")
  # Creating the plot and save it
  p <- plot_palette(palette)
  # Check if the palette name appears in the plot title
  expect_true(grepl("mysea", p$labels$title))
})

test_that("plot_palette contains correct plot title", {
  # Creating a palette with one color
  palette <- palette_from_hex(c("#264653"), name = "solo")
  # Creating the plot and save it
  p <- plot_palette(palette)
  # Check if the full title is exactly correct
  expect_equal(p$labels$title, "Palette: solo")
})

test_that("plot_palette stores the correct color data", {
  # Creating a palette with two colors
  palette <- palette_from_hex(c("#264653", "#2A9D8F"), name = "ocean")
  p <- plot_palette(palette)
  # Check if the plot data contains the same colors as the palette
  expect_equal(p$data$color, c("#264653", "#2A9D8F"))
})

test_that("plot_palette errors on non-artpalette input", {
  # Check if a regular list is rejected
  expect_error(plot_palette(list(colors = c("#FF5733"))))
  # Check if a character string is rejected
  expect_error(plot_palette("not a palette"))
})
