# data
mtcars

# Korelace
cor(mtcars$mpg, mtcars$hp)
cor.test(mtcars$mpg, mtcars$hp)

plot(mtcars$mpg, mtcars$hp)

cor(mtcars)

# Časové řady
AirPassengers

plot(AirPassengers)

casova_rada <- data.frame(y = AirPassengers,
                          obdobi = time(AirPassengers))

casova_rada$t <- 1:nrow(casova_rada)
casova_rada$t_2 <- casova_rada$t^2

fit_primka <- lm(formula = y ~ t,
                 data = casova_rada)

fit_parabola <- lm(formula = y ~ t + t_2,
                 data = casova_rada)

summary(fit_primka)
summary(fit_parabola)

# Exponenciální trend
casova_rada_exp <- data.frame(y = c(4.3, 3.89, 5, 4.96, 6.84, 6.9, 7.5, 9.2, 12.25),
                              obdobi = 1999:2007)

plot(casova_rada_exp$y ~ casova_rada_exp$obdobi)

casova_rada_exp$t <- 1:nrow(casova_rada_exp)
casova_rada_exp$y_ln <- log(casova_rada_exp$y)

fit_primka <- lm(formula = y_ln ~ t,
                 data = casova_rada_exp)

summary(fit_primka)

# po transformaci zpět
exp(1.18761) * exp(0.13185)^t