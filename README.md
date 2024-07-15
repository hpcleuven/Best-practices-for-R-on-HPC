# R on HPC Infrastructures

## About
This repository collects the training material for the VSC course about using R on HPC facilities.

## Content

- A [Brief blogpost](https://www.r-bloggers.com/2023/03/using-r-in-an-high-performance-computing-environment/) by Pedro Ojeda (Sweden) and maybe a [playlist of videos on R in an HPC environment](https://www.youtube.com/playlist?list=PL6jMHLEmPVLy63E9RXwHivhaN0epxaEVi)
- [CRAN Task View](https://github.com/cran-task-views/HighPerformanceComputing/blob/master/HighPerformanceComputing.md)

## Lunchbox Session Topics
- [50% of time] Parallelism (based on material from VSC User Day)
  + HTC
  + `library(foreach)`: correctly set `OMP_NUM_THREADS` combined with resource requests
  + MPI support in R (maybe too advanced for the audience, so skip)
- [50% of time] Performance
  + Rcpp: possible performance gains and flaws (arch dependent) => use with `R_LIBS_USER`
  + profiling tools
  + profiling in RStudio
  + matrix-matrix multiplication example (similar to the slides on Python for HPC)
  + using `r pkg(“flexiblas”)`? Using native R operator `%*%`
