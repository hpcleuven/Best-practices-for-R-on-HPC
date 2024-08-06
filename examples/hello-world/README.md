# Hello world

These are some examples of running trivial R scripts as batch jobs on an HPC
cluster that uses the Slurm scheduler.


## What is it?

1. Trivial R script
    - `hello_world.R`: a trivial R script that prints "Hello, world <hostname>
      !" to the standard output. `<hostname>` is the name of the compute node
      the script is running on.
    - `hello_world.slurm`: a job script that loads the R module, and runs the
      `hello_world.R` script.
    - `slurm-hello_world.out`: sample output file of the job.
1. Command line arguments with `optparse`
    - `hello_world_cla.R`: a trivial R script that prints a greeting message
      to the standard output, using command line arguments.
    - `hello_world_cla.slurm`: a job script that loads the R module, and runs
      the `hello_world_cla.R` script with command line arguments.
    - `slurm-hello_world_cla.out`: sample output file of the job.
1. Reading data from a file, writing data to a file
    - `weather_analysis.R`: a trivial R script that reads weather data from a
      file, and writes a summary to another file.
    - `weather_analysis.slurm`: a job script that runs the R script `weather_analysis.R`
      with command line arguments for input, output and quantity.
    - `slurm-weather_analysis.out`: sample output file of the job.
    - `data/London.csv`: sample input data file.
    - `output/tempmax.csv`: sample output data file.
      
    
