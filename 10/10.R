# Analýza rozptylu
my_data <- 
  data.frame(
    kategorie = c("A", "A", "A", "A", "B", "B", "B", "B", "C", "C", "C", "C"),
    body = c(91, 81, 74, 57, 83, 72, 63, 47, 71, 69, 58, 40)
  )

boxplot(my_data$body ~ my_data$kategorie)

celkovy_prumer<-mean(my_data$body)
prumer_A <-mean(my_data$body[my_data$kategorie=="A"])
## ANOVA
aov(formula = body ~ kategorie, data = my_data)
aov(formula = my_data$body ~ my_data$kategorie)
### Sum of squares[1] -> meziskupinový rozptyl
### Sum of squares[2] -> vnitroskupinový rozptyl
qf(p = 0.95, df1 = 2, df2 = 9)
(533.1667/2)/(1914.5000/9)
### Poměr determinace
533.1667/(533.1667+1914.5000)
