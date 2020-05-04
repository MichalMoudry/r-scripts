# Regresní analýza - příklad 1
## Pozn: https://www.machinelearningplus.com/machine-learning/complete-introduction-linear-regression-r/
data_domy <- data.frame(
  naklady = c(835,63,240,1005,184,213,313,658,195,545),
  cena = c(136,24,52,143,42,43,67,106,61,99)
)
naklady_prumer <- mean(data_domy$naklady)
cena_prumer <- mean(data_domy$cena)

fit_domy <- lm(
  formula = naklady ~ cena,
  data = data_domy
)
fit_summary <- summary(fit_domy)
fit_summary

# a) Modelujte závislost nákladů na ceně regresní přímkou
b0 <- fit_summary$coefficients[1]
b1 <- fit_summary$coefficients[2]
scatter.smooth(data_domy$cena, data_domy$naklady)

# b) Zhodnoťte kvalitu modelu pomocí koeficinetu determinace
R2 <- summary(fit_domy)$r.squared
R2
## Index korelace
cor(data_domy$naklady, data_domy$cena)

## Odpověď: Model regrese predikuje reálné datové body a dobře vysvětlujeme variabilitu v souboru.

# c) Interpretujte věcně hodnotu regresního koeficientu B1
b1
## Odpověď: Koeficient B1 má hodnotu 7.573698, což je odhadovaný koeficient reg. funkce (pokud se cena zvedne 1 nahoru/dolu náklady zvýší/sníží o 7,6 dolarů).

# d) Odhadněte střední hodnotu nákladů u domů za 80 tis. dolarů
Odhad <- -160.347 + 7.574 * 80
