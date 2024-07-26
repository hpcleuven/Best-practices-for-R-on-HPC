# R on HPC Infrastructures

## About
This repository collects the training material for the VSC course about using R on HPC facilities.

## Content

- [CRAN Task View](https://github.com/cran-task-views/HighPerformanceComputing/blob/master/HighPerformanceComputing.md)
- Parallelism via [Tidy Model](https://www.tidyverse.org/blog/2020/11/tune-parallel/) is interesting to consider
- For parallelising function calls [furrr](https://furrr.futureverse.org/) would be interesting

## Lunchbox Session Topics
- [50% of time] Parallelism (based on material from VSC User Day)
  + HTC (optimizing the setup for parallel work items)
  + `library(foreach)`: correctly set `OMP_NUM_THREADS` combined with resource requests
  + MPI support in R (maybe too advanced for the audience, so skip)
  + implicit parallelisation (using propoer libraries like OpenBLAS/MKL in a correct way) with eye on scaling
  + focus on parallel efficiency (instead of speedup)
- [50% of time] Performance
  + Rcpp: possible performance gains and flaws (arch dependent) => use with `R_LIBS_USER`
  + profiling tools
  + profiling in RStudio
  + matrix-matrix multiplication example (similar to the slides on Python for HPC)
  + using `r pkg(“flexiblas”)`? Using native R operator `%*%`
