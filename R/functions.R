fit_ozone <- function(data, formula) {
  lm(as.formula(formula), data = data)
}

glance_model <- function(model, formula) {
  glance(model) |>
    mutate(
      formula = formula,
      .before = everything()
    )
}

augment_model <- function(model, formula) {
  augment(model) |>
    mutate(
      formula = formula,
      .before = everything()
    )
}
