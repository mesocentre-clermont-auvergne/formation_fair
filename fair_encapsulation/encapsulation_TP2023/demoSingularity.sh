#!/bin/bash
#SBATCH --time=00:01:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH -o slurmjob-%j
#SBATCH --job-name=demo
#SBATCH --partition=debug
#SBATCH --mail-user=philippe.ruiz@inrae.fr
#SBATCH --mail-type=ALL

# Run the program
echo "Start job:"`date` >&2

cd /home/phiruiz/FormationFAIR/ # replace by your home path

singularity exec r-base.sif R --slave -e "source('demo.R')"

echo "Stop job: "`date` >&2
