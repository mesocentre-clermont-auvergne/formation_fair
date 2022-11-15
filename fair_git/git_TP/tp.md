# Introduction to code versioning with git
Mateo Hiriart  
2022-11-14

Dans ce TP nous allons voir les bases de git afin de créer un projet et de versionner
sont code pour garder une trace des modifications faite dans le temps.


Lien et commande pour vous aidé:  
&nbsp;&nbsp; Documentation:[https://docs.github.com/fr](https://docs.github.com/fr)  
&nbsp;&nbsp; Equivalent man: [https://git-scm.com/doc](https://git-scm.com/doc)  
&nbsp;&nbsp; `git help`

## I/ Configuration
1) Creer un compte sur [github](https://github.com/) ou [gitlab](https://gitlab.com)
2) A l'aide de la documentation configurer votre environnement avec `git config`

## II/ Premier test en local

1) Initialiser votre premier repo git en local et naviguer dans l'arborescence de votre projet.
Utiliser ``git status`` et/ou ``git log`` pour verifier la creation de votre repository git.
2) Faire un premier commit avec commentaire en créant un fichier .txt de test, utilisez `git status` pour vous aider.
3) Modifier votre fichier pour faire un deuxième commit et utilisé `git log` pour voir l'arborescence
de votre projet.
4) Vous pouvez maintenant supprimer le projet en supprimant le repertoire qui contient le dossier .git


## III/ Projet partagé sur github/gitlab
#### À partir de maintenant choisissez un binome.

1) Créer un repertoire sur github.com et inviter votre binome à collaborer dans `Settings`
2) Cloner chacun le projet en local avec `git clone <url_projet>` vous trouverez l'url pour cloner dans la page sur github
sous `<>code`
3) Faire un seul commit et push ce commit sur le repo distant (github) avec la commande `git push`.
4) Ensuite amener ce commit sur le local du binome qui ne l'a pas avec `git pull`

## IV/ Les conflits
#### Continuer à utiliser le repo de github en binome.

1) Effectuez tous deux des modifications sur le meme fichier et ensuite utilisez `git commit` et `git push`
pour appliquer la modification sur github. Une erreur devrait survenir pour la dernière personne à avoir push.
2) Utiliser `git fetch` et `git rebase` pour régler le problème ou `git pull --rebase`

## V/ Les branches

1) Créer chacun une nouvelle branche dans le projet avec `git branch` 
2) Faite du development sur cette nouvelle branche et utiliser `git commit` et `git push`
3) Merge la nouvelle branche de development sur la branche master avec `git merge`, et utiliser si besoin  `git fetch` et `git rebase` pour mettre à jour votre branche avant.