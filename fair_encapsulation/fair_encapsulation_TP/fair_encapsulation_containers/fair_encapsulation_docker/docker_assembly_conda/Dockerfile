FROM condaforge/mambaforge

MAINTAINER Coco l'asticot <coco@asticot.com>

##############################################################
####################     INSTALL TOOLS     ###################
##############################################################

RUN mamba install \
          --yes \
  --channel conda-forge \
  --channel bioconda \
  --channel defaults \
  python=3.8.15 \
  shovill=1.1.0 \
  fastp
##############################################################
####################    TEST IMAGE BUILD   ###################
##############################################################
WORKDIR /data
# downloading sars-cov-2 fastq test files
RUN wget https://raw.githubusercontent.com/StaPH-B/docker-builds/master/tests/SARS-CoV-2/SRR13957123_1.fastq.gz
RUN wget https://raw.githubusercontent.com/StaPH-B/docker-builds/master/tests/SARS-CoV-2/SRR13957123_2.fastq.gz
RUN echo "/data contain : $(ls /data)"
# running fastp on the files
RUN fastp --version
RUN fastp \
  -i SRR13957123_1.fastq.gz \
  -I SRR13957123_2.fastq.gz \
  -o SRR13957123_PE1.fastq.gz \
  -O SRR13957123_PE2.fastq.gz \
  -h SRR13957123_fastp.html \
  -j SRR13957123_fastp.json

# reinstantiating variable so it's available for cd cmd below
RUN shovill --version
RUN echo "TESTING SHOVILL + SPADES" && \
shovill --outdir out.spades --assembler spades --R1 SRR13957123_1.fastq.gz --R2 SRR13957123_2.fastq.gz --nostitch --noreadcorr --nocorr && \
grep '>' out.spades/contigs.fa && \
shovill --version
