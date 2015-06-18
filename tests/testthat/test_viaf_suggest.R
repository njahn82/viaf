context("testing viaf_suggest")

a <- viaf_suggest("egelhaaf")

test_that("viaf_suggest returns correct class", {
  expect_is(a, "list")
  expect_is(a$query, "character")
})

# test_that("viaf_suggest gives correct value", {
#   expect_match()
#   expect_match()
# })
#
# test_that("viaf_suggest fails correctly", {
#   expect_error()
# })

