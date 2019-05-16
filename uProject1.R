library(expm)

Q <- matrix(nrow=2,ncol=2, c(-3,3,5,-5),byrow=TRUE)
t <- seq(0,1,by=.001)
P <- array(rep(0, length(t)*2*2), dim=c(length(t), 2, 2))
for (i in 1:length(t))
{
  P[i, ,] <- expm(Q*t[i])
}

plot(t,P[,1,1],"l",col="blue",xlab="Time", ylab="P(t)",lwd=2,xlim=range(0,1),ylim=range(0,1))
lines(t,P[,1,2],"l",col="blue",xlab="Time", ylab="P(t)",lwd=2)
lines(t,P[,2,1],"l",col="red",xlab="Time", ylab="P(t)",lwd=2)
lines(t,P[,2,2],"l",col="red",xlab="Time", ylab="P(t)",lwd=2)
grid(col = "gray", lty = "dotted",equilogs = TRUE)
