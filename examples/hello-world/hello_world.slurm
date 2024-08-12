#!/usr/bin/env -S bash -l                     # <1>
#SBATCH --account=lpt2_sysadmin               # <2>
#SBATCH --nodes=1                             # <3>
#SBATCH --ntasks=1                            # <4>
#SBATCH --cpus-per-task=1                     # <5>
#SBATCH --time=00:02:00                       # <6>
#SBATCH --cluster=wice                        # <7>

module purge &> /dev/null                     # <8>
module load R/4.4.0-gfbf-2023a                # <9>

Rscript ./hello_world.R                       # <10>