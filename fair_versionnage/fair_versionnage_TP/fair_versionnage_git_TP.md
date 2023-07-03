# Introduction to code versioning with git
Mateo Hiriart  
2023-07-10

Dans ce TP nous allons voir les bases de git afin de créer un projet et de versionner
notre code pour garder une trace des modifications faites dans le temps.


Liens et commandes pour vous aider:  
&nbsp;&nbsp; Documentation :  [https://docs.github.com/fr](https://docs.github.com/fr)  
&nbsp;&nbsp; Equivalent man :  [https://git-scm.com/doc](https://git-scm.com/doc)  
&nbsp;&nbsp; `git help`

## I/ Configuration
1) Créer un compte sur [github](https://github.com/) ou [gitlab](https://gitlab.com)

2) A l'aide de la documentation configurez votre environnement avec la commande `git config`, ajoutez aussi votre clef ssh publique sur github ou gitlab.

## II/ Premier test en local

1) Créer un nouveau répertoire 'test' par exemple et déplacez-vous dedans.

2) Initialiser votre premier dépôt git en local en et naviguez dans l'arborescence de votre projet.
Utiliser ``git status`` et/ou ``git log`` pour vérifier la création de votre dépôt git.

3) Faire un premier `commit` avec un commentaire. Pour cela commencer par créer un fichier texte dans le répertoire courant, ensuite utilisez la commande `git status` pour vous aider.

4) Modifiez votre fichier pour faire un deuxième commit et utiliser `git log` pour voir l'arborescence
de votre projet.


## III/ Projet partagé sur github/gitlab
#### À partir de maintenant choisissez un binôme.

1) Créez un répertoire privé sur gitlab sans LICENCE mais avec un README et invitez votre binôme à collaborer en l'ajoutant à votre projet depuis l'onglet `Settings`, profitez-en pour tester les droits par utilisateur.

2) Clonez chacun le répertoire dans un autre dossier pour avoir une copie en local avec la commande `git clone <url_projet>`. Vous trouverez l'url pour cloner le répertoire depuis la page github sous `<>code`. Utilisez `git remote -v` pour voir le lien entre votre dépôt local et le dépôt distant sur gitlab.

3) Faites un `commit` avec un nouveau fichier ne pas utiliser le même nom de fichier et mettez à jour le répertoire distant avec ce commit en utilisant la commande `git push`.

4) Ensuite récupérez le commit de votre binôme avec la commande `git pull`.

## IV/ Les conflits
#### Continuez à utiliser le repertoire de gitlab en binôme.

1) Effectuez tous les deux des modifications différentes sur le même fichier et ensuite utilisez les commandes `git commit` et `git push`
pour appliquer la modification sur le répertoire distant github. Une erreur devrait survenir pour la dernière personne qui exécute la commande `push`.

2) Utilisez `git fetch` et `git rebase` pour importer les modifications et régler les problèmes de conflits.

3) Refaire le même processus pour el second binôme afind e pouvoir utiliser les commandes de rebasage sur le répertoire local.

## V/ Les branches

1) Créez chacun une nouvelle branche dans le projet avec `git branch`.

2) Faites du développement sur cette nouvelle branche et utilisez à nouveau les commandes `git commit` et `git push`. Puis exécuter la commande proposée par git.
AlleZ sur gitlab pour vérifier si votre nouvelle branche apparaît et compareZ le dernier commit avec la branche main.

3) Rebasculez sur la branche main et fusionnez la nouvelle branche de développement sur la branche main avec la commande `git merge <branch_name>`, et utilisez si besoin  `git fetch` et `git rebase` pour mettre à jour votre branche avant.

4) (Optionel) Si vous avez des modifications non ajoutées avec `git add` il est possible de sauvegarder ces modifications dans un "stash" temporairement avec `git stash` et réappliquer plus tard avec `git apply`.

## VI/ Issue et merge/pull request

1) Allez sur gitlab et créez une issue pour se plaindre du readme sans intérêt.

2) Créez ensuite un merge request depuis l'interface de l'issue de votre binôme et retournez sur l'issue pour voir le file d'activité. Vous pouvez aussi tester les commentaires par la même occasion pour discuter avec votre binôme directement dans l'issue.

3) Retournez sur votre répertoire local et importez les nouvelles branches `git pull` ou `git fetch`. Faites un nouveau commit qui résout l'issue créée par votre binôme.

4) Retournez à nouveau sur la page du merge request et appliquez vos modifications sur la branche main en validant le merge request. L'issue se fermera automatiquement et vos modifications seront appliquées sur la branche main. Bien évidement si votre branche n'est plus à jour avec la master il faut utiliser `git rebase` avant de merge.

## VII/ Licence et autre

1) Dernière étape, ajoutez une licence à votre projet, vous pouvez utiliser la même que sur le répertoire de cette formation. Assurez-vous bien que le nom du fichier est "LICENCE" pour que gitlab ou github puissent le reconnaître.

3) Explorez github ou gitlab pour voir les autres fonctionnalités et regarder d'autre projets plus important.

2) Optionnel : pour finir publiez votre projet ou le supprimer.
