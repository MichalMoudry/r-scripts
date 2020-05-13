# Sezonost 
sezonost_data <- data.frame(
  rok = c(2002, 2002, 2002, 2002, 
          2003, 2003, 2003, 2003, 
          2004, 2004, 2004, 2004, 
          2005, 2005, 2005, 2005,
          2006, 2006, 2006, 2006),
  sezona = c("Q1", "Q2", "Q3", "Q4", 
             "Q1", "Q2", "Q3", "Q4", 
             "Q1", "Q2", "Q3", "Q4", 
             "Q1", "Q2", "Q3", "Q4", 
             "Q1", "Q2", "Q3", "Q4"),
  y = c(576665
        ,630141
        ,621004
        ,636622
        ,598385
        ,660401
        ,650791
        ,667533
        ,643425
        ,710140
        ,706016
        ,721479
        ,689426
        ,756778
        ,750164
        ,773893
        ,737477
        ,813259
        ,813988
        ,839362
  ))

# Pohled na časovou řadu
plot(sezonost_data$y, type = "l")

# Přidáme čas
sezonost_data$t <- 1:nrow(sezonost_data)

# Vytvoření dummy proměnných 
sezonost_data$d1 <- ifelse(sezonost_data$sezona == "Q1", 1, 0)
sezonost_data$d2 <- ifelse(sezonost_data$sezona == "Q2", 1, 0)
sezonost_data$d3 <- ifelse(sezonost_data$sezona == "Q3", 1, 0)

# Modelujeme
fit_sezonnost <- lm(formula = y ~ t + d1 + d2 + d3 ,
                    data = sezonost_data)

summary(fit_sezonnost)

fit_sezonnost$coefficients[3]
fit_sezonnost$coefficients[4]
fit_sezonnost$coefficients[5]

pseudo_prumer <-(fit_sezonnost$coefficients[3]+fit_sezonnost$coefficients[4]+fit_sezonnost$coefficients[5])/4

# Dopocitame si empiricke sezonne odchylky
S1 <- fit_sezonnost$coefficients[3]-pseudo_prumer
S2 <- fit_sezonnost$coefficients[4]-pseudo_prumer
S3 <- fit_sezonnost$coefficients[5]-pseudo_prumer
S4 <- (-pseudo_prumer)

# S1+S2+S3+S4 = ?
S1 + S2 + S3 + S4

# Výsledný model
## HDP = b0 + b1t ...
HDP = fit_sezonnost$coefficients[1] + fit_sezonnost$coefficients[2]*t + (-33218)*q1 + 20148*q2 + 2694*q3 + 10376*q4



#Indexy
