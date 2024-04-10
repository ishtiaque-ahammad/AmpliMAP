# AmpliMAP
Amplicon-based Microbiome Analysis Pipeline

## Description
Amplicon-based Microbiome Analysis Pipeline (AmpliMAP) is an easy to use step-by-step pipeline for analyzing amplicon-based microbiome sequencing data.

## Main Components

**1. Setting up the environment**

**2. Import and visualize the data**

**3. Quality control and feature table generation**

**4. Phylogenetic analysis**

**5. Diversity analysis**

**6. Taxonomic analysis**

**7. Differential abundance calculation with lefse**

**8. Differential abundance calculation with ANCOM**

## Dependencies
AmpliMAP is dependent upon Qiime2 platform (https://qiime2.org/) for working with amplicon seqencing data for microbiome analysis.

You need to have jupyterlab or jupyter notebook installed which are available at https://jupyter.org/

## Installation

### Clone the repository
``` git clone https://github.com/ishtiaque-ahammad/AmpliMAP ```

### Navigate to the cloned directory
``` cd AmpliMAP ```

### Create the qiime2 environment
``` conda env create --file qiime2.yml ```

## Usage

### Prepare your data

1. Download the example raw amplicon sequencing data mentioned in the manifest file from NCBI Bioproject PRJNA876782 and keep them in a directory named raw_data.

4. Keep the metadata, the manifest file, and the AmpliMAP.ipynb notebook outside the raw_data directory.

5. Make sure the path to all the raw sequencing data files are correctly mentioned inside the manifest file.

### Open the AmpliMAP.ipynb in jupyterlab or jupyter notebook 

Open the AmpliMAP.ipynb using jupyterlab or jupyter notebook. Make sure the metadata and the manifest files are in the same directory as the AmpliMAP.ipynb notebook.

### Run the pipeline in step-by-step manner

The pipeline will generate output visualizations, tables, other files and store them in appropriate directories.

## License
This project is licensed under the GPL-3.0 license.
