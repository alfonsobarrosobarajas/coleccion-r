# Analisis Canonico
b <- matrix(c(-1.01, -8.61),nrow=2,ncol=1)
B <- matrix(c(1.4, -3.6,-3.6,-8.76), nrow=2, ncol=2)
bo <- 72.15
# Funcion para encontrar punto estacionario
pe <- function(B, b){-0.5*(solve(B)%*%b)}

# Punto estacionario
xs <- pe(B, b)
xs

# La respuesta de predicción en el punto estacionario
rpe <- function(bo, xs, b){bo + (.5*(t(xs)%*%b))}

ys <- rpe(bo, xs, b)
ys

# Encontrando niveles naturales del punto estacionario
# n1 <- (xs[1, 1]*30)+255
# n2 <- (xs[2, 1]*9)+55
# n3 <- (xs[3, 1]*0.6)+1.1

# n1
# n2
# n3

# Paso 2: Encontrar eigenvalores y eigenvectores
# determinar el tipo de punto estacionario
ei <- eigen(B)
ei


# Se encuentra
mu <- 4
sol <- solve(B-(mu*diag(2)),-0.5*b)
sol

r <- sqrt(t(sol)%*%sol)
r

# La respuesta optima
y <- 72.15-(1.01*sol[1, 1])-(8.6*sol[2, 1])+(1.4*sol[1, 1]^2)-(8.76*sol[2, 1]^2)-(7.20*sol[1, 1]*sol[2, 1])
y