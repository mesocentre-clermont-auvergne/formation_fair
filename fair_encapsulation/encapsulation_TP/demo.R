
# load library
require(knitr)
require(ade4)
require(kableExtra)
require(adegraphics)
require(gridExtra)

# Load and check your data

data(doubs)

# Analyses

acp1 <- dudi.pca(doubs$env, scan =  FALSE)
acp2 <- dudi.pca(doubs$fish, scan =  FALSE, scale = FALSE)

# Plot the results

g1 <- scatter(acp2, plot = FALSE)
g2 <- s.value(doubs$xy, acp2$li[,1], plot = FALSE)

save(g1, file = "g1.Rdata")
