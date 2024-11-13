# write as a cdf function the uniform (1,10)
cdf=function(x) {
  if (x < 1) {
    return(0)
  } else if (x >= 10) {
    return(1)
  } else {
    return((x - 1) / 9)
  }
}


lo = 1
hi = 9

digits = rep(0, 9)
for (y in 1:9) {
    for (i in lo:hi) {
        digits[y] = digits[y] + cdf((y + 1) * 10^i) - cdf(y * 10^i)
    }
}
print(digits)


#write a sommatory function
result <- 0

# Ciclo da 1 a 9
for (k in 1:9) {
  result <- result + log10((10 * k + 1) / (10 * k + 2))
}

# Stampa il risultato
print(result)

#