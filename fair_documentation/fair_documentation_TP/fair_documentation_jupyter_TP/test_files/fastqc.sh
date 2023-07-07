#!/bin/bash

#SBATCH --job-name=fastqc_analysis
#SBATCH --ntasks=1
#SBATCH -o /home/piemari/job_output/fastqc.log
#SBATCH -e /home/piemari/job_output/fastqc.err
#SBATCH -t 00:20:00
#SBATCH --mem=1G
#SBATCH -c 4

module load conda/23.3.1
conda activate jupyter_notebook_fair

DIRECTORY="${HOME}/notebooks/jupyter_TP/test_files/"
FILE="SRR25109930.fastq.gz"
INPUT="${DIRECTORY}/${FILE}"
OUTPUT="${DIRECTORY}/fastqc_output"

fastqc ${INPUT} -t 4 --memory 1000  --outdir ${OUTPUT}
