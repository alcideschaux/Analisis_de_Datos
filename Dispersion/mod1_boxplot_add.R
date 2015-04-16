sum <- summary(autos$precio[autos$tipo == "mediano"])
abline(h = c(sum[2], sum[5]), col = c("blue","green"), lwd = 3)
