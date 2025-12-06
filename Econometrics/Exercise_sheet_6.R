set.seed(1234)
N <-100000

X <- rt(N, df = 2)

running_mean <- cumsum(X) / (1:N)

plot(1:N, running_mean, type = "l", col = "blue",
     xlab = "Sample size n",
     ylab = "Running mean",
     main = "Weak Law of Large Numbers: Xn ~ t2")
abline(h = mean(X), col = "red", lwd = 2, lty = 2)  # reference line for overall mean
legend("topright", legend = c("Running mean", "Overall mean"),
       col = c("blue", "red"), lty = c(1,2), lwd = 2)


X <- rcauchy(N, location = 0, scale = 1)

running_mean <- cumsum(X) / (1:N)

plot(1:N, running_mean, type = "l", col = "blue",
     xlab = "Sample size n",
     ylab = "Running mean",
     main = "Weak Law of Large Numbers: Xn ~ t2")
abline(h = mean(X), col = "red", lwd = 2, lty = 2)  # reference line for overall mean
legend("topright", legend = c("Running mean", "Overall mean"),
       col = c("blue", "red"), lty = c(1,2), lwd = 2)


"Weak Law of Large Numbers can't be applied to the second case"