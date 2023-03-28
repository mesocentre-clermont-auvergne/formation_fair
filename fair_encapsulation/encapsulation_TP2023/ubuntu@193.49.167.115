# Specify the parent image from which we build
FROM rocker/r-ver:4.2.2

# install some needed environmental dependencies 
RUN apt-get update && apt-get install -y libxml2-dev libcurl4-openssl-dev libssl-dev \
libzmq3-dev && rm -rf /var/lib/apt/lists/*

# specific options to install R packages
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl', Ncpus = 16)" >> \
/usr/local/lib/R/etc/Rprofile.site

# R packages to install
RUN Rscript -e 'install.packages("targets", dependencies = TRUE)'

# RUN Rscript -e 'install.packages("vegan", dependencies = TRUE)'