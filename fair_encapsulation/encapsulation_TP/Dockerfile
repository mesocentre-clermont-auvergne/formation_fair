FROM rocker/r-ver:4.2.1

RUN apt-get update && apt-get install -y git-core libcurl4-openssl-dev libgit2-dev libglpk-dev libgmp-dev libicu-dev libpng-dev libssl-dev xml2 libxml2-dev make pandoc pandoc-citeproc zlib1g-dev cmake libbz2-dev liblzma-dev libgsl-dev libfontconfig1-dev libmagick++-dev libharfbuzz-dev libfribidi-dev && rm -rf /var/lib/apt/lists/*
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl', Ncpus = 16)" >> /usr/local/lib/R/etc/Rprofile.site

RUN Rscript -e 'install.packages("devtools", dependencies = TRUE)'

RUN Rscript -e 'install.packages("BiocManager", dependencies = TRUE)'

RUN Rscript -e 'BiocManager::install("mixOmics", upgrade = "never")'

