# **Formation FAIR**
![FAIR](https://crlnp.github.io/intro-gdr/images/fair.png)

Construction d'un projet de formation aux pratiques FAIR

## Programme prévisionnel sur 5 axes
1. Introduction aux pratiques FAIR
    > - Crise de la reproductibilité
    > - Définitions FAIR
    > - Pratiques FAIR au travers d'outils d'aide à la Gestion
    > - Programme de la formation FAIR

2. Notion de versionnage et pérénnité du code
  - Introduction à Git
    > - Récupérer du code depuis github, gitlab
    > - Créer un dépôt git
    > - Créer des commit
    > - Ajouter des fichier
    > - Mettre à son jour un depôt

3. Gestion de l'environnement de travail
  - Introduction à la gestion de son environnement
    > - Utilisation de conda et des environnements de travail
    > - Utilisation de conteneur avec Docker/singularity

4. Gestion de workflow
    > - Gestionnaire de workflow avec snakemake

4. Documentation du code
  - Introduction aux sytèmes de documentations
    > - Introduction à Rmarkdown
    > - Introduction à jupyter et jupyterlab

Le dépôt se structure selon les 4 thématiques développées :
1. [fair_introduction](fair_introduction) contient le cours d'introduction du module [FAIR](fair_introduction/fair_introduction_latex_cours/fair_introduction.pdf)
2. [fair_versionnage](fair_versionnage) contient :
  - Le cours sur le versionnage avec [Git](fair_versionnage/fair_versionnage_cours/introduction_versionage_git.pdf)
  - Le [TP_Git](fair_versionnage/fair_versionnage_TP/fair_versionnage_git_TP.md)
3. [fair_encapsulation](fair_encapsulation) contient :
   - Le [cours](fair_encapsulation/fair_encapsulation_cours/fair_introduction_encapsulation_cours.pdf)
   - Les [TP](fair_encapsulation/fair_encapsulation_TP) pour [conda](fair_encapsulation/fair_encapsulation_TP/fair_encapsulation_conda/fair_encapsulation_conda.ipynb) et [singularity](fair_encapsulation/fair_encapsulation_TP/fair_encapsulation_containers/fair_singularity_TP.html)

[fair_workflow](fair_workflow) contient :
   - Le cours de gestion des workflows avec [snakemake](fair_workflow/fair_workflow_cours/introduction_snakemake.pdf)
   - Le [TP snakemake](fair_workflow/fair_workflow_TP/snakemake_TP.pdf)
4. [fair_documentation](fair_documentation) contient :
    - Le [cours](fair_documentation/fair_documentation_cours/fair_introduction_documentation.pdf)
    - Le [TP jupyter](fair_documentation/fair_documentation_TP/fair_documentation_jupyter_TP/00_encapsulation_jupyter.ipynb)
    - Le [TP rmarkdown](fair_documentation/fair_documentation_TP/fair_documentation_rmardown_TP/rmarkdown_TP)


```
.
├── fair_documentation
│   ├── fair_documentation_cours
│   └── fair_documentation_TP
├── fair_encapsulation
│   ├── fair_encapsulation_cours
│   └── fair_encapsulation_TP
├── fair_introduction
│   ├── fair_introduction_latex_cours
│   └── fair_introduction_markdown
├── fair_versionnage
│   ├── fair_versionnage_cours
│   └── fair_versionnage_TP
├── fair_workflow
│   ├── fair_workflow_cours
│   └── fair_workflow_TP
├── fiche descript formation a completer.docx
├── formation_fair_image_template
│   ├── images
│   └── template_latex_uca
├── LICENCE.txt
└── README.md
```
