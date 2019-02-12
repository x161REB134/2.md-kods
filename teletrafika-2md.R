
x <- c(0,5,4,3,5,3,4,2,3,1,3,3,4,6,3,2,2,1,3,2,3,1,3,3,1,4,3) #Vertibas
#print(x)
t <- c(27)#laiks
tg <- seq(from = 0, to = t, by = 1) #izvedio vektoru no 0 lidz t vertibai ar soli 1
#print(tg)
xg <- append(x, 0) #pievieno pie vertibu vektora 0 vertibu lai grafiks sanaktu

#print(xg)


plot(tg,xg,xlim=c(0, t+1),xlab = "Time",ylab = "Jobs in the system",type="s",col = "blue")


abline(v=(seq(0,t,1)), col="lightgray", lty="dotted")   #grdi linijam x asij
abline(h=(seq(0,max(x),1)), col="lightgray", lty="dotted")  #grid linijam y asij

#3.uzdevuma 
S3 <- sum(x)
A3 <- S3/t
library(MASS)
sprintf("3.The Average Number of Jobs in the System: %s",fractions(A3))  #atbilde 3.uzd
#2 uzdevuma 

y <- x[ x != 0 ] #nonem 0
#print(y)
w <- (y - 1) #atnem -1 visam vertibam 
#print(w)
S2 <- sum(w)
A2 <- S2/t
sprintf("2.The Average Queue Length: %s",fractions(A2))  #atbilde 2.uzd

#1 uzdevuma
S1 <- length(y) # nosaka cik daudz ir darbu zem 1
#print(S1)
A1 <- S1/t
sprintf("1.Average Server Utility: %s",fractions(A1))  #atbilde 1.uzd
