#!/bin/bash

#SBATCH --mail-user=ikhajehn@ucsc.edu
#SBATCH --mail-type=ALL
#SBATCH --job-name=sra_download
#SBATCH --time=03:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --array=1-24
#SBATCH --output=sra_download_out/_%A_%a.out
#SBATCH --error=sra_download_err/_%A_%a.err
#SBATCH --no-requeue

module load miniconda3
conda activate camino26

cd /scratch/ikhajehn

# read in list of SRAs that you uploaded to HB
SRA=$(sed -n "${SLURM_ARRAY_TASK_ID}p" poutssrdata.txt)

# Prefetch metadata
prefetch "${SRA}"

# Download reads
fasterq-dump "${SRA}"
