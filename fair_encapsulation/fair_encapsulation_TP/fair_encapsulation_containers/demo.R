# demo.R

# packages
require(graphics)
data(mtcars)

# save plots
pdf("./fig_pair.pdf")
pairs(mtcars, main = "mtcars data", gap = 1/4)
dev.off()

pdf("./fig_coplot.pdf")
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)
dev.off()

## possibly more meaningful, e.g., for summary() or bivariate plots:

mtcars2 <- within(mtcars, {
  vs <- factor(vs, labels = c("V", "S"))
  am <- factor(am, labels = c("automatic", "manual"))
  cyl  <- ordered(cyl)
  gear <- ordered(gear)
  carb <- ordered(carb)
})

capture.output(summary(mtcars2), file = "summary_data.txt")

