#!/bin/bash
#SBATCH -J 2D-NiC3
#SBATCH -N 2 --exclusive
#SBATCH --ntasks-per-node=16
#SBATCH -t 01:00:00
#SBATCH -A xxx

module load VASP/5.4.4.16052018-nsc1-intel-2018a-eb
mpprun vasp_std
