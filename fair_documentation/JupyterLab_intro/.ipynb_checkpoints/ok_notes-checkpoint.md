https://blog.jupyter.org/the-big-split-9d7b88a031a7

01 Start

Minimal-notebook
docker pull jupyter/minimal-notebook:lab-3.4.2
docker run -p 8888:8888 jupyter/minimal-notebook:lab-3.4.2 

Start from local folder
docker run --rm -v ${PWD}:/data/ -w /home/ -p 8888:8888 jupyter/minimal-notebook:lab-3.4.2 

https://jupyter.org/try

installation de packages
Voir TP Docker
conda install jupytext -c conda-forge


jupyter en texte jupytext https://towardsdatascience.com/introducing-jupytext-9234fdff6c57
Open a notebook as text to show students
Paired notebooks

02


03

PDF Rapport cle https://hal-lara.archives-ouvertes.fr/hal-03563244
intégration elabftw jupyter

Nb jupyter notebooks https://github.com/parente/nbestimate

Markdown de jupyter
https://jupyter-notebook.readthedocs.io/en/stable/examples/Notebook/Working%20With%20Markdown%20Cells.html
import images as attachment
Download notebook https://jupyter-notebook.readthedocs.io/en/stable/examples/Notebook/examples_index.html

Voir TP précédent
GitLab Markdown
https://docs.gitlab.com/ee/user/markdown.html

Demo with R image

FROM jupyter/r-notebook
RUN conda install --yes \
        r-reticulate r-mvtnorm r-gdata r-matrixcalc \
        r-gtools r-mpoly r-moments \
    && conda clean --all --yes
https://stackoverflow.com/questions/61331238/include-additional-r-pkg-in-custom-jupyterhub-user-notebook-image 