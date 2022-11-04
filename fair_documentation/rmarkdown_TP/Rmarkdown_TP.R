#' ---
#' title: "Rmarkdow"
#' author: "Philippe Ruiz"
#' date: "2022-11-04"
#' output: html_document
#' ---

#' Caneva de fichier Rmd

#' Analyser les différentes parties du fichier Rmd.
#' 
#' La première partie comprend les informations générales du document, titre, auteur, date, format...
#'

#' Le premier chunck comporte généralement les options minimales pour executer l'ensemble du code présent dans le document, 
#' chargement des packages, chargement des données...

#' Vérifier la présence des packages nécessaires et les installer si besoin

if (!require("knitr", quietly = TRUE))
  install.packages("knitr", quiet = TRUE)
if (!require("ade4", quietly = TRUE))
  install.packages("ade4", quiet = TRUE)
if (!require("kableExtra", quietly = TRUE))
  install.packages("kableExtra", quiet = TRUE)
if (!require("adegraphics", quietly = TRUE))
  install.packages("adegraphics", quiet = TRUE)
if (!require("gridExtra", quietly = TRUE))
  install.packages("gridExtra", quiet = TRUE)

#' on peut alors chargé les paquets

require(knitr)
require(ade4)
require(kableExtra)
require(adegraphics)
require(gridExtra)

#' Dans un fichier RMarkdown pour que du code soit executé il doit être encapsulé
#' dans un "chunk". Voici à quoi cela ressebmle
#' ````
#' ```{r, eval=TRUE}`r ''`
#' 1 + 1
#' ```
#' ````

#' 1 - Ecrivez le chunk permetant de charger les paquets necesaires à l'analyse
#'
#' Chargement des données 
#' À présent que toutes les librairies sont bien chargées dans notre environement 
#' R chargons les données qui seront utilisées dans l'exercice. Il s'agit de données
#' disponible dans le package ade4 :

data(doubs)

#' 2 - Chargez les données (du package ade4) et réalisez une acp sur le tableau 
#' contenant les données environementales (env) et une acp normée sur les données de bio (fish).
#' Ces deux analyses doivent être dans un nouveau chunk.

acp1 <- dudi.pca(doubs$env, scan =  FALSE)
acp2 <- dudi.pca(doubs$fish, scan =  FALSE, scale = FALSE)

#' À présent on souhaite afficher le biplot, lignes et colonnes de l'analyse sur
#' les individus sous
#' forme graphique. la fonction est scatter.
scatter(acp2, plot = FALSE)

#' Comme les coordonnées géographiques des echantillonages sont également présentes
#' dans le jeu de donnéespourquoi ne pas s'en servir pour représenter le gradient 
#' géographique sur les dnnées morphologiques.
s.value(doubs$xy, acp2$li[,1], plot = FALSE)

#' Afficher dans un nouveau chunk ces 2 représentations graphiques cote à cote
#' à l'aide de la fonction : ADEgS(c(g1, g2), layout = c(1, 2))

#' Passons aux tableaux. Il existe plusieurs façon de représenter des tableaux 
#' de données sous Rmarkdown, plus ou moins jolis...
#' La forme basique et de directement afficher l'objet :
head(doubs$env)

#' Heureusement il est possible d'obtenir des tableaux plus travaillés grace aux 
#' options des chunk comme results = 'asis' qui mais direcement en forme la sortie
#' du chunk sous forme de tableau.
#' ````
#' ```{r, eval=TRUE, results = 'asis'}`r ''`
#' head(doubs$env)
#' ```
#' ````

#' Enfin il existe aussi des packages spécifiques pour générer des tableaux à l'aide
#' knit et knitr, avec beaucoup d'option mais très modulables.
#' Le meilleur exemple est probablement kableExtra
kable(head(doubs$env), booktabs = TRUE) %>%
kable_styling(font_size = 12)
