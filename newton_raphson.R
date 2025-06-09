p <- function(x) {
  return (8 * x ^ 4 - 14 * x ^ 3 - 9 * x ^ 2 - 11 * x - 1)
}

dp <- function(x) {
  return (32 * x ^ 3 - 42 * x ^ 2 - 18 * x - 11)
}

# Newton Raphson
# x1 = x0 - f(x0) / f'(x0)

newton_raphson <- function(x0, tol = 1e-7, max_iter = 100) {
  iter <- 0
  
  while (iter < max_iter) {
    fx0 <- p(x0)
    dfx0 <- dp(x0)
    
    if (dfx0 == 0) {
      cat("Erro: Derivada igual a zero na iteração", iter, "- método falhou.\n")
      return(NULL)
    }
    
    if (abs(fx0) < tol) {
      cat("Raiz encontrada:", x0, "\n")
      cat("Número de iterações:", iter, "\n")
      return(x0)
    }
    
    x1 <- x0 - fx0 / dfx0
    
    if (abs(x1 - x0) < tol) {
      cat("Raiz encontrada:", x1, "\n")
      cat("Número de iterações:", iter + 1, "\n")
      return(x1)
    }
    
    x0 <- x1
    iter <- iter + 1
  }
  
  cat("Erro: Método não convergiu após", max_iter, "iterações.\n")
  return(NULL)
}

cov1 <- newton_raphson(-6.0)
# Raiz encontrada: -0.09743356
# Número de iterações: 11

cov2 <- newton_raphson(0.3)
# Raiz encontrada: -0.09743356
# Número de iterações: 4 

cov3 <- newton_raphson(0.8)
# Raiz encontrada: -0.09743356 
# Número de iterações: 5 

cov4 <- newton_raphson(5.0)
# Raiz encontrada: 2.447657 
# Número de iterações: 8 

