set.seed(123)

# the number of observations
n <- 100

earth <- rnorm(n)
fire <- rnorm(n)
wind <- rnorm(n)
water <- rnorm(n)

# linear relationship for heart
heart <- 2 * earth + 3 * fire - 1.5 * wind + 0.5 * water + rnorm(n)

# combining the variables 
data <- data.frame(earth, fire, wind, water, heart)

model <- lm(heart ~ earth + fire + wind + water, data = data)
summary(model)

