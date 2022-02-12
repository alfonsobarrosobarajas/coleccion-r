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

"""
# Se encuentra
mu <- 3.5
sol <- solve(B-(mu*diag(2)),-0.5*b)
sol

r <- sqrt(t(sol)%*%sol)
r

# La respuesta optima
y <- 72.15-(1.01*sol[1, 1])-(8.61*sol[2, 1])+(1.4*sol[1, 1]^2)-(8.76*sol[2, 1]^2)-(7.20*sol[1, 1]*sol[2, 1])
y

# Codigo para multiples Mu's
ridge <- function(B, b, Mu){
  sol <- solve(B-(mu*diag(2)),-0.5*b)
  return(sol)  
}

# sapply es mas eficiente que el ciclo for
xr <- sapply(seq(2.6, 100, 0.1), function(mu) ridge(B, b, mu))
xr

r=0
for(i in 1:ncol(xr)){
  r[i]=as.vector(sqrt(t(as.matrix(xr[,i]))%*%as.matrix(xr[,i])))
}
r

#Encontrando la respuesta óptima
y0=0
for(i in 1:ncol(xr)){
  y0[i]=72.15-(1.01*xr[1,i])-(8.61*xr[2,i])+(1.4*xr[1,i]^2)-(8.76*xr[2,i]^2)-(7.20*xr[1,i]*xr[2,i])
}
y0
"""
ridge=function(B,b,mu){
  sol=solve(B-(mu*diag(2)),-0.5*b)
  return(sol)
}

xr=sapply(seq(-20, -15, 0.01),function(mu) ridge(B,b,mu))
xr

#Encontrando el radio de optimización
r=0
for(i in 1:ncol(xr)){
  r[i]=as.vector(sqrt(t(as.matrix(xr[,i]))%*%as.matrix(xr[,i])))
}
r

#Encontrando la respuesta óptima
y0=0
for(i in 1:ncol(xr)){
  y0[i]=72.15-(1.01*xr[1,i])-(8.61*xr[2,i])+(1.4*xr[1,i]^2)-(8.76*xr[2,i]^2)-(7.20*xr[1,i]*xr[2,i])
}
y0

# Graficar los radios
plot(r, y0, type = "l")
# abline(v <- 1.4142)
# m <- seq(-15,-12,0.01)
# plot(m, y0,type="l")