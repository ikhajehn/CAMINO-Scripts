# Trimming Adapters Using TrimGalore!
## Introduction to Trimming
Trimming involves removing adapter sequences from sequencing data using software like TrimGalore! To need for adapter removal depends on the context of the jobs at hand. 

Are there times where trimming is unnecessary? Yes!

Modern aligners are able to automatically detect and clip off adapter sequences during mapping. When working with modern aligners, there is not strong need for trimming adapter sequences. 

In my situation, I am planning to call SNP's. As a result, trimming is absolutely necessary. Context matters!

## Trimming Files
Downloading paired-end reads resulted in first and second pass files for each SRA file. How do I trim these files in a way that also makes sure HPC keeps the paired files together? 

First, I made two  ```.txt``` files to keep the *_1.fastq and *_2.fastq files separate. 
```
ls *1.fastq > r1_list.txt
ls *2.fastq > r2_list.txt
```
This will come in handy later. 

In progress...
