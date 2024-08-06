# Hello world

These are some examples of running trivial R scripts as batch jobs on an HPC
cluster that uses the Slurm scheduler.


## What is it?

1. `hello_world.R`: a trivial R script that prints "Hello, world <hostname> !" to the
   standard output. `<hostname>` is the name of the compute node the script is running
   on.
1. `hello_world.slurm`: a job script that loads the R module, and runs the
   `hello_world.R` script.
