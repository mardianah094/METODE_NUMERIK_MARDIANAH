simpson38_com <- function(f, a, b, n){
  if (n %% 3 != 0){
    stop("n harus kelipatan 3.")
  }
  
  h <- (b-a) / n
  x <- seq(a, b, length.out = n + 1)
  Y <- F(X)
  
  idx3 <- seq(2, n, by = 3)
  idx2 <- seq()
}