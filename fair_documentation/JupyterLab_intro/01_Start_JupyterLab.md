# Use JupyterLab

## Start the JupyterLab Server

As we wanted everyone to start owith the same installation base, we use a **Docker image for JupyterLab**. If you don't know what Docker is, you will learn more on the second day of the course.

We chose a minimal image (jupyter/minimal-notebook:lab-3.4.2), but other possibilities are available:
https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html


To start the JupyterLab server, open a Terminal, navigate to the folder of your choice and use this command :
```
docker run --rm -v ${PWD}:/home/jovyan/ -w /home/jovyan/ --user "$(id -u):$(id -g)" -p 8888:8888 jupyter/minimal-notebook:lab-3.4.2
```

For MacOS users, you can use this one alternatively:
```
docker run --rm -v ${PWD}:/home/jovyan/work -w /home/jovyan/work -p 8888:8888 jupyter/minimal-notebook:lab-3.4.2
```

In order to open the interface, look at the last lines of information displayed below the command you just typed. You should be able to see a URL similar to this one (but don't use this one!) : http://127.0.0.1:8888/lab?token=3b29983bfee5fdc5e51cdf93ab7d138e87c7c2582b02d894 

You now have an instance with no memory of modifications of the server. If you want to extend this installation with aditional functionalities, you will need to create a Dockerfile with installation commands. We will see this tomorrow during the Docker practical session.


## Use JupyterLab online

Alternatively, you can use the demo installation on the Project Jupyter website: https://jupyter.org/try-jupyter/lab/


---

## Annex : How to...?

### How to install R packages ?

In order to install R packages, you will need a reference image with the **R kernel installed**, for instance `jupyter/r-notebook` or `jupyter/datascience-notebook`. Then you will need to create a Dockerfile to extend this image with the packages you need. See an example below, taken from [StakOverflow](https://stackoverflow.com/questions/61331238/include-additional-r-pkg-in-custom-jupyterhub-user-notebook-image)


    FROM jupyter/r-notebook
    RUN conda install --yes \
        r-reticulate r-mvtnorm r-gdata r-matrixcalc \
        r-gtools r-mpoly r-moments \
        && conda clean --all --yes


### How to install extensions ? (to test)

[Extensions](https://towardsdatascience.com/5-extensions-that-will-make-you-switch-to-jupyter-lab-32c6b66ac755) are plugins for your JupyterLab interface. In order to use them, you will first need to install Node.js. The rest of the process is similar to any instalaltion described above and implies writing a Dockerfile including an installation command, e.g. `jupyter labextension install name-of-extension@1.2.3`.




