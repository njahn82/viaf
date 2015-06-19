context("testing viaf_get")

a <- viaf_get("111108524")

test_that("viaf_get returns correct class", {
  expect_is(a, "list")
  expect_is(a$Wikipedia, "character")
})
