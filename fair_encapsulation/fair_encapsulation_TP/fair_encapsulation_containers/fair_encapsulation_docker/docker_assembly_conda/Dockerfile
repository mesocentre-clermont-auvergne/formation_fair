FROM condaforge/mambaforge

MAINTAINER Coco l'asticot <coco@asticot.com>

#########################################
####   INSTALL FASTP TRIMMING TOOL   ####
#########################################

RUN mamba install \
  --yes \
  --channel conda-forge \
  --channel bioconda \
  --channel defaults \
  fastp

RUN fastp --help

#########################################
####  INSTALL SHOVILL ASSEMBLY TOOL  ####
#########################################


RUN mamba install \
  --yes \
  --channel conda-forge \
  --channel bioconda \
  --channel defaults \
  shovill

RUN shovill --help
