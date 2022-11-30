SAMPLES=["SRR3099585_chr18", "SRR3099586_chr18", "SRR3099587_chr18", "SRR3105697_chr18", "SRR3105698_chr18", "SRR3105699_chr18"]

rule all:
    input:
        expand("results/FastQC/{sample}_fastqc.zip", sample=SAMPLES),
        expand("results/FastQC/{sample}_fastqc.html", sample=SAMPLES)
        
rule fastqc:
    input:
        expand("data/mydatalocal/Data/{sample}.fastq.gz", sample=SAMPLES),
        expand("data/mydatalocal/Data/{sample}.fastq.gz", sample=SAMPLES)
    output:
        expand("results/FastQC/{sample}_fastqc.zip", sample=SAMPLES), 
        expand("results/FastQC/{sample}_fastqc.html", sample=SAMPLES)
    conda:
        "envs/qc.yaml"
    shell: "fastqc --outdir results/FastQC/ {input}"
