# **Formation FAIR 2022**
![FAIR](https://crlnp.github.io/intro-gdr/images/fair.png)

Construction d'un projet de formation aux pratiques FAIR

## Programme prévisionnel sur 4 axes
1. Introduction aux pratiques FAIR
    > - In
    > -
1. Notion de versionnage et pérénnité du code
  - Introduction à Git
    > - Récupérer du code depuis github, gitlab
    > - Créer un dépôt git
    > - Créer des commit
    > - Ajouter des fichier
    > - Mettre à son jour un depôt

 2. Gestion de l'environnement de travail
    > - Utilisation de conda et des environnements de travail
    > - Utilisation de conteneur avec singularity
    > - Gestionnaire de workflow avec snakemake

3. Documentation du code
    > - Introduction à Rmarkdown
    > - Introduction à jupyter et jupyterlab

Le dépôt se structure selon les 3 thématiques développées :
1. [fair_introduction](fair_introduction/introduction_cours) contient le cours d'introduction du module [FAIR](fair_introduction/introduction_cours/fair_introduction.pdf)
2. [fair_encapsulation](fair_encapsulation) contient :
   - Le [cours](fair_encapsulation/encapsulation_cours/introduction_encapsulation.pdf)
   - Les [TP](fair_encapsulation/encapsulation_TP) pour [conda](fair_encapsulation/encapsulation_TP/fair_encapsulatiopn_conda.html) et [singularity](fair_encapsulation/encapsulation_TP/fair_encapsulation_docker_singularity.nb.html)
3. [fair_documentation](fair_documentation) contient :
    - Le [cours](fair_documentation/introduction_documentation/documentation_cours/introduction_documentation.pdf)
    - Le [TP jupyter](fair_documentation/TP_jupyter/00_encapsulation_jupyter.ipynb)
    - Le [TP rmarkdown](fair_documentation/rmarkdown_TP/Rmarkdown_TP.Rmd)


```
.
├── fair_documentation
│   ├── introduction_documentation
│   ├── JupyterLab_intro
│   ├── rmarkdown_cheatsheet_V2.pdf
│   ├── rmarkdown_reference_guide.pdf
│   ├── rmarkdown_TP
│   └── TP_jupyter
├── fair_encapsulation
│   ├── conda_sheet_4.12.pdf
│   ├── encapsulation_cours
│   ├── encapsulation_TP
│   └── introduction_encapsulation.pdf
├── fair_introduction
│   └── introduction_cours
└── support_enseignement
    ├── documentation
    ├── introduction
    ├── packaging
    └── versionnage
```

15 directories, 6 files
