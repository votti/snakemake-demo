# Snakemake workflow: `<name>`

[![Snakemake](https://img.shields.io/badge/snakemake-≥6.3.0-brightgreen.svg)](https://snakemake.github.io)
[![GitHub actions status](https://github.com/<owner>/<repo>/workflows/Tests/badge.svg?branch=main)](https://github.com/<owner>/<repo>/actions?query=branch%3Amain+workflow%3ATests)


A Snakemake workflow for demoing Snakemake from a raw template


## Usage

### Install the basic snakemake environment

Installs and activates basic snakemake
```
mamba create -n snakemake-test -f environment.yml
conda activate snakemake-test
```

### Run the conda workflow

Manual/simplest:
```
snakemake -c4 --sdm=conda
```

To use the profiles

```
snakemake --profile=profile/local
```

To use the slurm profile (eg on science cluster)
```
snakemake --profile=profile/slurm
```
