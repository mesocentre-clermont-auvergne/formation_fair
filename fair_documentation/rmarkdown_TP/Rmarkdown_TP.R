#' ---
#' title: "Rmarkdow"
#' author: "Philippe Ruiz"
#' date: "2022-11-04"
#' output: html_document
#' ---

#' Caneva de fichier Rmd

#' Analyser les aferentes parties du fichier Rmd.
#' 
#' La premiere partie comprend les informations generales 
#' du document, titre, auteur, date, format...
#' ````
#' ---
#' title: "Titre du document"
#' author: "Mon Nom"
#' date: "Aujourd'hui"
#' output: html_document
#' ---
#' ````

#' Le premier chunck comporte generalement les options minimales pour 
#' executer l'ensemble du code present dans le document, 
#' chargement des packages, chargement des donnees...

#' Dans un fichier RMarkdown pour que du code soit execute il doit etre encapsule
#' dans un "chunk". Voici a quoi cela ressemble :
#' ````
#' ```{r, eval = TRUE}`r ''`
#' 1 + 1
#' ```
#' ````

#' 1 - Ecrivez le chunk permetant verifier la presence des paquets necessaires
#' et de les charger pour l'analyse :
#' ````
#' if (!require("knitr", quietly = TRUE))
#'   install.packages("knitr", quiet = TRUE)
#' if (!require("ade4", quietly = TRUE))
#'   install.packages("ade4", quiet = TRUE)
#' if (!require("kableExtra", quietly = TRUE))
#'   install.packages("kableExtra", quiet = TRUE)
#' if (!require("adegraphics", quietly = TRUE))
#'   install.packages("adegraphics", quiet = TRUE)
#' if (!require("gridExtra", quietly = TRUE))
#'   install.packages("gridExtra", quiet = TRUE)
#' if (!require("dplyr", quietly = TRUE))
#'   install.packages("dplyr", quiet = TRUE)
#' ````

#' on peut alors charge les paquets :
#' ````
#' require(knitr)
#' require(ade4)
#' require(kableExtra)
#' require(adegraphics)
#' require(gridExtra)
#' ````
#' 
#' Chargement des donnees 
#' a present que toutes les librairies sont bien chargees dans notre environement 
#' R chargons les donnees qui seront utilisees dans l'exercice. Il s'agit de donnees
#' disponible dans le package ade4 :
#' ````
#' data(doubs)
#' ````
#' 
#' 2 - Chargez les donnees (du package ade4) et realisez une acp sur le tableau 
#' contenant les donnees environementales (env) et une acp normee sur les donnees de bio (fish).
#' Ces deux analyses doivent etre dans un nouveau chunk.
#' ````
#' acp1 <- dudi.pca(doubs$env, scan =  FALSE)
#' acp2 <- dudi.pca(doubs$fish, scan =  FALSE, scale = FALSE)
#' ````
#' 
#' a present on souhaite afficher le biplot, lignes et colonnes de l'analyse sur
#' les individus sous
#' forme graphique. la fonction est scatter.
#' ```` 
#' scatter(acp2, plot = FALSE)
#' ````
#' 
#' Comme les coordonnees geographiques des echantillonages sont egalement presentes
#' dans le jeu de donneespourquoi ne pas s'en servir pour representer le gradient 
#' geographique sur les donnees morphologiques.
#' ````
#'s.value(doubs$xy, acp2$li[,1], plot = FALSE)
#' ````
#' 
#' 3 - Affichez dans un nouveau chunk ces 2 representations graphiques cote a cote
#' a l'aide de la fonction : ADEgS(c(g1, g2), layout = c(1, 2))

#' Passons aux tableaux. Il existe plusieurs facon de representer des tableaux 
#' de donnees sous Rmarkdown, plus ou moins jolis...
#' La forme basique et de directement afficher l'objet :
#' ````
#' head(doubs$env)
#' ````
#' 
#' Heureusement il est possible d'obtenir des tableaux plus travailles grace aux 
#' options des chunk comme results = 'asis' qui mais direcement en forme la sortie
#' du chunk sous forme de tableau.
#' ````
#' ```{r, eval = TRUE, results = 'asis'}`r ''`
#' head(doubs$env)
#' ```
#' ````

#' Enfin il existe aussi des packages specifiques pour generer des tableaux a l'aide
#' knit et knitr, avec beaucoup d'option mais tres modulables.
#' Le meilleur exemple est probablement kableExtra
#' 
#' ````
#' kable(head(doubs$env), booktabs = TRUE) %>%
#' kable_styling(font_size = 12)
#' ````
#' 
#' 4 - Testez aferents modeles de tableaux et leur rendu graphique.
#' Vous pouvez egalement vous inspirer d'autre type de modele graphique disponible
#' avec d'autres package en cherchant sur internet.

#' Apprendre a gerer les warning, messages d'erreur et information
#' Beucoup de fonctions sdous R produisent des messages informatif à l'utilisateur.
#' Il existe trois niveaux : message, warning, error.
#' Cependant on ne souhaite pas forcement voir apparaitre ces messages sur le document
#' final. C'est pourquoi il existe aferentes options pour les chunks permettant 
#' de gerer leur affichage.
#' ````
#' ```{r, message = TRUE, warning = TRUE, error = TRUE}`r ''`
#' head(doubs$env)
#' ```
#' ````

#' Derniere partie : ameliorer la navigation dans le document creer (html)
#' Le document creer peut parfois etre long et comporter plusieurs parties.
#' Il peut alors etre interessant d'optimiser sa hierchisation en ajoutant
#' un menu flottant (table des matiere) ou de mettre les resultats dans plusieurs
#' onglets.
#' Ceci est possible grace aux options renseignees en tete de document (voir debut du TP),
#' ou en l'indiquant a Rmarkdown quelles parties seront mise sous forme d'onglets.

#' 5 - Creer un menu flottant pour votre document en ajoutant les options suivantes au
#' bon endroit dans l'objet de tete:
#' ````
#' toc: true
#' toc_float: true
#' code_folding: hide
#' ````

#' 6 - Creer de niveau de titre / sous titre, par exemple pour les aferentes formes
#' de tableaux et creer des onglets pour chacune des sous parties
#' a l'aide de la montion :
#' ````
#' {.tabset}
#' ````

#' 7 - Bonus : Faire en sorte que la date du document soit mise a jour automatiquement.
#' 