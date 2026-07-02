# Running a Quality Control via FastQC
FastQC is an important software that evaluates the quality of raw sequencing reads. It is important to check the quality of a library before running analysis to check for poor quality reads, overrepresented sequences, and adapter contimination, etc.

A basic command for running FastQC 
```
fastqc your_sample_file.fastq.gz --outdir=fastqc_results
```
