# Ideas for the training


## R resources

- [CRAN Task View](https://github.com/cran-task-views/HighPerformanceComputing/blob/master/HighPerformanceComputing.md)
- Parallelism via [Tidy Model](https://www.tidyverse.org/blog/2020/11/tune-parallel/) is interesting to consider
- For parallelising function calls [furrr](https://furrr.futureverse.org/) would be interesting


## Lunchbox Session Topics

- [50% of time] Performance
  + profiling tools
  + profiling in RStudio
  + matrix-matrix multiplication example (similar to the slides on Python for HPC)
  + using `r pkg(“flexiblas”)`? Using native R operator `%*%`
  + Rcpp: possible performance gains and flaws (arch dependent) => use with `R_LIBS_USER`

- [50% of time] Parallelism (based on material from VSC User Day)
  + HTC (optimizing the setup for parallel work items)
  + `library(foreach)`: correctly set `OMP_NUM_THREADS` combined with resource requests
  + MPI support in R (maybe too advanced for the audience, so skip)
  + inter-node MPI communication latency: is it too bad?
  + implicit parallelisation (using propoer libraries like OpenBLAS/MKL in a correct way) with eye on scaling
  + focus on parallel efficiency (instead of speedup)

As a general flow of the session, we can perhaps start with an example. Then, we profile it, and then see where things can be improved. With that way, the two major topics above would be covered along the way.

Another possibility is using a part of Mariana's PhD work: https://montesmariana.github.io/semcloud/articles/processClouds.html.
