# Dot plot
plot(autos$precio, rep(1, nrow(autos)),
  ylab = "", yaxt = "n", xlab = "Precio ($1000s)", xlim = c(5,65))