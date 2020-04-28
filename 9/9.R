qnorm(p = 0.995, mean = 0, sd = 1)
qnorm(p = 0.975, mean = 0, sd = 1)

# chí-kvadrát
# 1
n <- 215
cetnosti <- c(0.41, 0.14, 0.07, 0.38)
empiricke_cetnosti <- c(82, 38, 26, 69)
sum(((empiricke_cetnosti - cetnosti*n)^2)/(cetnosti*n))
qchisq(p = 0.99, df = 3)
qchisq(p = 0.95, df = 3)

# Kontingenční tabulka
# 1
i_1 <- c(1768, 807, 189, 47)
i_2 <- c(946, 1387, 746, 53)
i_3 <- c(115, 438, 288, 16)

real <- matrix(c(i_1, i_2, i_3), byrow = T, ncol = 4)

i_r1 <- sum(i_1)
i_r2 <- sum(i_2)
i_r3 <- sum(i_3)

n <- sum(i_1, i_2, i_3)

i_s1 <- sum(i_1[1], i_2[1], i_3[1])
i_s2 <- sum(i_1[2], i_2[2], i_3[2])
i_s3 <- sum(i_1[3], i_2[3], i_3[3])
i_s4 <- sum(i_1[4], i_2[4], i_3[4])

r <- c(i_r1, i_r2, i_r3)
s <- c(i_s1, i_s2, i_s3, i_s4)

r[1]*s[1]/n

teor <- matrix(nrow = length(r), ncol = length(s))
test_krit <- matrix(nrow = length(r), ncol = length(s))

for (i in 1:length(r)) {
  for (j in 1:length(s)) {
    teor[i, j] <- r[i]*s[j]/n
    test_krit[i, j] <- (real[i, j] - teor[i, j])^2/(teor[i, j])
  }
}

sum(test_krit)