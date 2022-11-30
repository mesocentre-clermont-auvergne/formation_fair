rule all:
    input:
        "results/FastQC/SRR3099585_chr18_fastqc.zip",
        "results/FastQC/SRR3099585_chr18_fastqc.html"

rule fastqc:
    input:
        "data/mydatalocal/Data/SRR3099585_chr18.fastq.gz"
    output:
        "results/FastQC/SRR3099585_chr18_fastqc.zip", 
        "results/FastQC/SRR3099585_chr18_fastqc.html"
    conda:
        "envs/qc.yaml"
    shell: "fastqc --outdir results/FastQC/ {input}"
