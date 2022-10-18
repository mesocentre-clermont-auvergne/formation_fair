---
title: |
  <center> FAIR Bioinfo 2022 </center>
  <center> Conda practice </center>
        
author: |
  <center> Université Clermont Auvergne</center>
  <center> Plateforme AuBi, Mésocentre</center>
       
date: "`r format(Sys.time(),'%d %B %Y')`"
#output:
#  prettydoc::html_pretty:
#    theme: cayman
#    highlight: github
#    toc: true
#editor_options: 
#  chunk_output_type: console
output: 
  rmdformats::readthedown
editor_options: 
  chunk_output_type: console
---


Main :

> - Manage conda environment
> - Use conda environment on cluster pipeline
> - Share a conda environement

echo "name: conda_env_samtools\nchannels:\n - bioconda\ndependencies:\n bioconda::samtools=1.15.1" > conda_env_samtools.yml