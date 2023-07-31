SAMPLES=["SRR3099585_chr18", "SRR3099586_chr18", "SRR3099587_chr18", "SRR3105697_chr18", "SRR3105698_chr18", "SRR3105699_chr18"]

rule all:
    input:
        expand("results/FastQC/{sample}_fastqc.html", sample=SAMPLES),
        "results/multiqc/multiqc_report.html"
        
rule fastqc:
    input:
         expand("data/mydatalocal/Data/{sample}.fastq.gz", sample=SAMPLES)
    output:
        expand("results/FastQC/{sample}_fastqc.zip", sample=SAMPLES), 
        expand("results/FastQC/{sample}_fastqc.html", sample=SAMPLES)
    conda:
        "envs/qc.yaml"
    log:
        std=expand("logs/{sample}_fastqc.std", sample=SAMPLES),
        err=expand("logs/{sample}_fastqc.err", sample=SAMPLES)
    shell: "fastqc --outdir results/FastQC/ {input} 1> {log.std} 2> {log.err}"


rule multiqc:
    input:
        expand("results/FastQC/{sample}_fastqc.zip", sample = SAMPLES)
    output:
        "results/multiqc/multiqc_report.html"
    log:
        std="logs/multiqc.std",
        err="logs/multiqc.err"
    conda:
        "envs/qc.yaml"
    shell:
        "multiqc --outdir results/multiqc {input}  1> {log.std} 2> {log.err}"
