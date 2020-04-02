# Kombinace
choose(480, 4) / choose(500, 4)

# Binomické rozdělení
## Výpočet prvděpodobnostní funkce
dbinom(x = 2, size = 20, prob = 0.02)
dbinom(x = 1, size = 20, prob = 0.02)
dbinom(x = 0, size = 20, prob = 0.02)
## Výpočet distribuční funkce
pbinom(q = 2, size = 20, prob = 0.02)

# Poisonnovo rozdělení
## Výpočet pravděpodobnostní funkce
dpois(x = 0, lambda = 1)
## Výpočet distribuční funkce
ppois(q = 0, lambda = 1)

# Hypergeometrické rozdělení
## Výpočet pravděpodobnostní funkce
dhyper(x = 0, m = 10, n = 190, k = 5)
## Výpočet distribuční funkce
phyper(q = 0, m = 10, n = 190, k = 5)

# Normální rozdělení
## Příklad č. 1
pnorm(q = 185, mean = 180, sd = 7) - pnorm(q = 170, mean = 180, sd = 7)
## Příklad č.2
pnorm(q = (185 - 180)/7, mean = 0, sd = 1) - pnorm(q = (170 - 180)/7, mean = 0, sd = 1)
## Příklad č. 3
pnorm(q = 27, mean = 26.4, sd = 0.2) - pnorm(q = 26, mean = 26.4, sd = 0.2)
## Příklad č. 4
qnorm(p = 0.975, mean = 10, sd = 5)