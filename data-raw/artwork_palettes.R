   ## code to prepare `artwork_palettes` dataset goes here
artwork_palettes <- data.frame(
  palette_name = c("starry_night", "bedroom_arles", "self_portrait_hat", "great_wave", "water_lilies", "woman_parasol", "girl_pearl_earring", "milkmaid", "kiss_klimt", "persistence_memory", "scream_pastel", "mona_lisa", "the_dream_picasso", "broadway_boogie", "marilyn_warhol", "self_portrait_kahlo", "sunday_grande_jatte", "night_watch", "birth_of_venus", "american_gothic"),
  artwork = c("The Starry Night", "Bedroom in Arles", "Self-Portrait with a Straw Hat", "The Great Wave off Kanagawa", "Water Lilies (1906)", "Woman with a Parasol", "Girl with a Pearl Earring", "The Milkmaid", "The Kiss", "The Persistence of Memory", "The Scream (pastel)", "Mona Lisa", "The Dream", "Broadway Boogie Woogie", "Marilyn Monroe 1967", "Self-Portrait", "A Sunday on La Grande Jatte", "The Night Watch", "The Birth of Venus", "American Gothic"),
  artist = c("Vincent van Gogh", "Vincent van Gogh", "Vincent van Gogh", "Hokusai", "Monet", "Monet", "Vermeer", "Vermeer", "Klimt", "Dalí", "Munch", "Leonardo da Vinci", "Picasso", "Mondrian", "Warhol", "Kahlo", "Seurat", "Rembrandt", "Botticelli", "Wood"),
  hex1 = c("#1a3431", "#374D8D", "#FBDC30", "#1F284C", "#9F4640", "#82A4BC", "#0C0B10", "#022F69", "#4A5FAB", "#40798C", "#5059A1", "#C8B272", "#4E7989", "#314290", "#FD0C81", "#121510", "#3F3F63", "#DBC99A", "#7A989A", "#A6BDB0"),
  hex2 = c("#2b41a7", "#93A0CB", "#A7A651", "#2D4472", "#4885A4", "#4C7899", "#707DA6", "#D6C17A", "#609F5C", "#bca455", "#EFC337", "#a88b4c", "#A9011B", "#4A71C0", "#FFED4D", "#6D8325", "#808EB7", "#A68329", "#849271", "#8B842F"),
  hex3 = c("#6283c8", "#82A866", "#E0BA7A", "#6E6352", "#395A92", "#2F5136", "#CCAD9D", "#D8D0BE", "#E3C454", "#bfb37f", "#1F386E", "#a0a584", "#E4A826", "#F1F2ED", "#C34582", "#D6CFB7", "#465946", "#5B5224", "#C1AE8D", "#41240B"),
  hex4 = c("#ccc776", "#C4B743", "#9BA7B0", "#D9CCAC", "#7EA860", "#B1B94C", "#B08E4A", "#6B724B", "#A27CBA", "#805730", "#D1AE82", "#697153", "#80944E", "#F0D32D", "#EBA49E", "#E5AD4F", "#8C9355", "#8A350C", "#CF9546", "#9C4823"),
  hex5 = c("#c7ad24", "#A35029", "#5A5F80", "#ECE2C6", "#B985BA", "#E5DCBE", "#863B34", "#7C3E2F", "#B85031", "#514A2E", "#BE3B2C", "#43362a", "#DCD6B2", "#AB3A2C", "#272324", "#BD5630", "#925E48", "#090A04", "#C67052", "#D6AA7E"),
  style = c("Post-Impressionism", "Post-Impressionism", "Post-Impressionism", "Ukiyo-e", "Impressionism", "Impressionism", "Baroque", "Baroque", "Art Nouveau", "Surrealism", "Expressionism", "Renaissance", "Cubism", "De Stijl", "Pop Art", "Surrealism", "Pointillism", "Dutch Golden Age", "Renaissance", "Regionalism"),
  stringsAsFactors = FALSE
)
usethis::use_data(artwork_palettes, overwrite = TRUE)
