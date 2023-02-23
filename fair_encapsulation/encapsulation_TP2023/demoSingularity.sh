#!/bin/bash
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH -o slurmjob-%j
#SBATCH --job-name=demo
#SBATCH --partition=normal
#SBATCH --mail-user=philippe.ruiz@inrae.fr
#SBATCH --mail-type=ALL

# Run the program
echo "Start job:"`date` >&2

cd /home/phiruiz/FormationFAIR/

singularity exec r-base.sif R --slave -e "source('demo.R')"

echo "Stop job: "`date` >&2
