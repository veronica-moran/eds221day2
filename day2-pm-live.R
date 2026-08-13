# Indexing Vectors

survey_years <- seq(2008, 2024, by = 2)
coral_cover_pct <- c(
  34.53,
  22.26,
  11.66,
  9.25,
  14.05,
  22.30,
  30.35,
  16.35,
  5.74
)
n_observations <- c(Acropora = 13882, Pocillopora = 13988, Porites = 3192)


# Indexing with positive Integers

coral_cover_pct[8:9]

coral_cover_pct[c(1, length(coral_cover_pct))]


# Out of order works too

coral_cover_pct[9:8]
coral_cover_pct[c(8, 8, 8)]

# Negative Integers

coral_cover_pct[-c(1, 3, 5, 7, 9)]

#Gives Everything except elements 1, 3, 5, 7, 9

coral_cover_pct[-(2:length(coral_cover_pct))]


#Oh no a bug
coral_cover_pct[-1, 2]
#goes from -1, 0, 1, 2 --Can't index with negative, 0 and positive numbers all at the same time

# Names

n_observations["Porites"]

n_observations["Porites", "Pocillopora"]
# doesnt work because it only apples it to one vector need to use c() so it applies to all

# Names
n_observations["Porites"]
n_observations[c("Porites", "Pocillopora")]


# Logic

cyclone_year <- 2010
survey_years == cyclone_year
survey_years[survey_years == cyclone_year]
coral_cover_pct[survey_years == cyclone_year]


# 2D data structures

#Up first: Matrices

simple_matrix <- matrix(1:12, nrow = 3, ncol = 4)
simple_matrix

# Index a simple value
simple_matrix[3, 4]


# Entire rows, colums, with_blanks_

simple_matrix[2, ]

simple_matrix[, 2]
#Index a submatrix

simple_matrix[1:2, 2:3]

# Indexing can assign to elements too
simple_matrix[2, 3] <- 100L
simple_matrix


# Data Frames represent things like data sheets

bird_species <- c("California Towhee", "House Finch", "House Sparrow")
bird_count <- c(9L, 6L, 8L)
song_freq_khz <- c(4.99, 2.66, 4.08)
is_native <- c(TRUE, TRUE, FALSE)


songbird_survey <- data.frame(
  species = bird_species,
  count = bird_count,
  song_freq_khz = song_freq_khz,
  is_native = is_native
)


# To pull out columns index by name

songbird_survey[, "species"]


# The "buck" operator $
songbird_survey$species


# to get rows:
songbird_survey[1, ]
songbird_survey[1:2, ]

#
