# Regresní analýza - příklad 1
## Pozn: https://www.machinelearningplus.com/machine-learning/complete-introduction-linear-regression-r/
naklady <- c(835, 63, 240, 1005, 184, 213, 313, 658, 195, 545)
cena <- c(136, 24, 52, 143, 42, 43, 67, 106, 61, 99)
naklady_prumer <- mean(naklady)
cena_prumer <- mean(cena)

lin_models <- lm(naklady ~ cena, data = faithful)

# a) Modelujte závislost nákladů na ceně regresní přímkou
scatter.smooth(naklady, cena)

# b) Zhodnoťte kvalitu modelu pomocí koeficinetu determinace
R2 <- summary(lin_models)$r.squared
R2
## Index korelace
cor(cena, naklady)

## Odpověď: Model regrese predikuje reálné datové body.

# c) Interpretujte věcně hodnotu regresního koeficientu B1
sxy <- sum((naklady - naklady_prumer)*(cena - cena_prumer))/length(naklady)
sx <- sum(naklady - naklady_prumer)/length(naklady)
b1 <- sxy/(sx^2)
b1
## Odpověď: Koeficient B1 má hodnotu 2.246101e+31, což je odhadovaný koeficient reg. funkce.

# d) Odhadněte střední hodnotu nákladů u domů za 80 tis. dolarů
