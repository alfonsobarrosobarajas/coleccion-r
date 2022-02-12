# Analisis Canonico
b <- matrix(c(-1.104, 0.087, 1.02),nrow=3,ncol=1)




B <- matrix(c(-0.76, -0.175, -0.25, -0.175, -1.042, 0.075, -0.25, 0.075, -1.149), nrow=3, ncol=3)
bo <- 10.165
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
n1 <- (xs[1, 1]*30)+255
n2 <- (xs[2, 1]*9)+55
n3 <- (xs[3, 1]*0.6)+1.1

n1
n2
n3

# Paso 2: Encontrar eigenvalores y eigenvectores
# determinar el tipo de punto estacionario
ei <- eigen(B)
ei


# Se encuentra