# DGEMM

This is a script to highlight the dangers of multi-level parallelism in
embarrassingly parallel applications. R's matrix multiplication is parallelized
using BLAS, which is parallelized using OpenMP. This script uses a parallel
`foreach` to do the computation for multiple matrices in parallel.


## What is it?

1. `dgemm.R`: script that performs multiple matrix multiplications using R's
   `foreach` package.
