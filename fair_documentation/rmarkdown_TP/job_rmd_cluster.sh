#!/bin/bash

#SBATCH --job-name=rmd_cluster
#SBATCH --ntasks=1
#SBATCH -o /home/phiruiz/FormationFAIR/rmd_cluster.log
#SBATCH -e /home/phiruiz/FormationFAIR/rmd_cluster.err
#SBATCH -t 1:00:00
#SBATCH --mem=1G
#SBATCH -c 1


module load conda
conda activate rmd_fair

PATH="/home/phiruiz/FormationFAIR"
input="${PATH}/rmarkdown.Rmd"
output="${PATH}/test_fair_output_rmd.html"
Rscript -e "rmarkdown::render("$input",output_file="$output",params=list(args = myarg))"

