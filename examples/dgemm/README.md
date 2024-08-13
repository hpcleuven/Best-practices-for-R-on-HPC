# DGEMM

This is a script to highlight the dangers of multi-level parallelism in
embarrassingly parallel applications. R's matrix multiplication is parallelized
using BLAS, which is parallelized using OpenMP. This script uses a parallel
`foreach` to do the computation for multiple matrices in parallel.


## What is it?

1. `dgemm.R`: script that performs multiple matrix multiplications using R's
   `foreach` package.
1. `single_core.slurm`: runs `dgemm.R` with `cpus_per_task=1` and `--nr_cores
   1`.
1. `multicore.slurm`: runs `dgemm.R` with `cpus_per_task=4`,
   `OMP_NUM_THREADS=4` and `--nr_cores 1`.
1. `parallel_single_core.slurm`: runs `dgemm.R` with `cpus_per_task=4`,
   `OMP_NUM_THREADS=1` and `--nr_cores 4`.
1. `parallel_multicore.slurm`: runs 'dgemm.R` with `cpus_per_task=4`,
   `OMP_NUM_THREADS=2` and `--nr_cores 2`.
1. `parallel_benchmark.slurm`: runs `dgemm.R` using `hyperfine` with `cpus_per_task=96`,
   `OMP_NUM_THREADS` unspecified and `--nr_cores` varying from 1 to 96.
1. `parallel_omp_num_threads_benchmark.slurm`: runs `dgemm.R` using `hyperfine` with
   `cpus_per_task=96`, `OMP_NUM_THREADS` set such that when `--nr_cores`
   varies from 1 to 96, all the cores are used.
1. `multicore_benchmark.slurm`: runs `dgemm.R` using `hyperfine` with `cpus_per_task=96`,
   `OMP_NUM_THREADS` ranging from 1 to 96 and `nr_cores 1`.
1. `multicore_gnu_parallel.slurm`: runs `dgemm.R` using GNU `parallel` with `cpus_per_task=96`,
   number of parallel work items increasing from 1 to 96, `OMP_NUM_THREADS` set to 2.
1. `memory_and_walltime.slurm`: runs `dgemm.R` with `cpus_per_task=2` and `--nr_cores
   1` with matrix size and power to raise to given as command line arguments to `sbatch`.
   This allows to benchmark for memory usage and walltime.
