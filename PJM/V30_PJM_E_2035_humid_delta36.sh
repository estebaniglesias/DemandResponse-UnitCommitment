#!/bin/bash
#SBATCH --job-name=PJMEhumid36
#SBATCH --partition=levque
#SBATCH --nodes 1
#SBATCH --mem 23000
#SBATCH --ntasks=8
#SBATCH --cpus-per-task 1
##SBATCH --mem-per-cpu=2400
#SBATCH --output=V30_PJM_E_2035_humid_delta36.out
##SBATCH --error=archivo_%i.err
#SBATCH --mail-user=estebaniglesiasmanriquez@gmail.com
#SBATCH --mail-type=ALL
module load Lmod/6.5
source $LMOD_PROFILE
module load Anaconda3/5.0.1
####module load cplex/12.6.1
$julia V30_PJM_E_2035_humid_delta36.jl

