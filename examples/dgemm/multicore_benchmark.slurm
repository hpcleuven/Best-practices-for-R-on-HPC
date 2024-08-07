#!/usr/bin/env -S bash -l
#SBATCH --account=lpt2_sysadmin
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=96
#SBATCH --time=00:30:00
#SBATCH --partition=batch_sapphirerapids
#SBATCH --cluster=wice

# load modules
module load R/4.4.0-gfbf-2023a
module load GCCcore/12.3.0

# create list of commands to execute based on the number of cores
args=()
for nr_cores in 1 2 4 8 12 16 24 32; do
    args+=("OMP_NUM_THREADS=$nr_cores ./dgemm.R --nr_matrices 144 --size 2000 --power 5 --nr_cores 1")
done

# run with hyperfine
set -x
hyperfine --runs 3 "${args[@]}"
