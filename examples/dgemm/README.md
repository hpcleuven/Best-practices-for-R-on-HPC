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
1. `parallel_benchmark.slurm`: runs `dgemm.R` using `hyperfine` with `cpus_per_task=72`,
   `OMP_NUM_THREADS` unspecified and `--nr_cores` varying from 1 to 72.
1. `parallel_omp_num_threads_benchmark.slurm`: runs `dgemm.R` using `hyperfine` with
   `cpus_per_task=72`, `OMP_NUM_THREADS` set such that when `--nr_cores`
   varies from 1 to 72, all the cores are used.
1. `multicore_benchmark.slurm`: runs `dgemm.R` using `hyperfine` with `cpus_per_task=17`,
   `OMP_NUM_THREADS` ranging from 1 to 32 and `nr_cores 1`.
1. `multicore_omp_trouble.slurm`: runs `dgemm.R` using `parallel` with `cpus_per_task=96`,
   the number of parallel workitems ranging from 1 to 18, OMP_NUM_THREADS not set.
