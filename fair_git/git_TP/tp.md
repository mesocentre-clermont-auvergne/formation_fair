# Introduction to code versioning with git
Mateo Hiriart  
2022-11-14

Dans ce TP nous allons voir les bases de git afin de créer un projet et de versionner
notre code pour garder une trace des modifications faites dans le temps.


Liens et commandes pour vous aider:  
&nbsp;&nbsp; Documentation:[https://docs.github.com/fr](https://docs.github.com/fr)  
&nbsp;&nbsp; Equivalent man: [https://git-scm.com/doc](https://git-scm.com/doc)  
&nbsp;&nbsp; `git help`

## I/ Configuration
1) Créez un compte sur [github](https://github.com/) ou [gitlab](https://gitlab.com)
2) A l'aide de la documentation configurez votre environnement avec la commande `git config`

## II/ Premier test en local

1) Initialisez votre premier dépôt git en local et naviguez dans l'arborescence de votre projet.
Utilisez ``git status`` et/ou ``git log`` pour vérifier la création de votre dépôt git.
2) Faites un premier `commit` avec commentaires en créant un fichier .txt de test, utilisez la commande `git status` pour vous aider.
3) Modifiez votre fichier pour faire un deuxième commit et utiliser `git log` pour voir l'arborescence
de votre projet.
4) Vous pouvez maintenant supprimer le projet en supprimant le répertoire qui contient le dossier .git


## III/ Projet partagé sur github/gitlab
#### À partir de maintenant choisissez un binôme.

1) Créez un répertoire sur github.com et invitez votre binôme à collaborer en l'ajoutant à vos collaborateurs depuis l'onglet `Settings`
2) Clonez chacun le projet en local avec la commande `git clone <url_projet>`. Vous trouverez l'url pour cloner le répertoire depuis la page github
sous `<>code`
3) Faites un seul `commit` et mettez à jour le répertoire distant (github) avec ce commit en utilisant la commande `git push`.
4) Ensuite envoyez ce `commit` sur le local de votre binôme qui ne l'a pas avec la commande `git pull`

## IV/ Les conflits
#### Continuez à utiliser le repo de github en binôme.

1) Effectuez tous les deux des modifications sur le même fichier et ensuite utilisez les commandes `git commit` et `git push`
pour appliquer la modification sur le répertoire distant github. Une erreur devrait survenir pour la dernière personne qui exécute la commande `push`.
2) Utilisez `git fetch` et `git rebase` pour régler le problème ou `git pull --rebase`

## V/ Les branches

1) Créez chacun une nouvelle branche dans le projet avec `git branch` 
2) Faites du développement sur cette nouvelle branche et utilisez à nouveau les commandes `git commit` et `git push`
3) Fusionnez la nouvelle branche de développement sur la branche main avec la commande `git merge`, et utilisez si besoin  `git fetch` et `git rebase` pour mettre à jour votre branche avant.
