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

1) Créer un nouveau répertoire 'test' par exemple. Vous déplacer dedans et faire un `git init`

2) Initialisez votre premier dépôt git en local et naviguez dans l'arborescence de votre projet.
Utilisez ``git status`` et/ou ``git log`` pour vérifier la création de votre dépôt git.

3) Faites un premier `commit` avec commentaires en créant un fichier .txt de test, utilisez la commande `git status` pour vous aider.

4) Modifiez votre fichier pour faire un deuxième commit et utiliser `git log` pour voir l'arborescence
de votre projet.

5) Vous pouvez maintenant supprimer le projet en supprimant le répertoire qui contient le dossier .git


## III/ Projet partagé sur github/gitlab
#### À partir de maintenant choisissez un binôme.

1) Créez un répertoire privé sur gitlab.com sans LICENCE avec un README et invitez votre binôme à collaborer en l'ajoutant à votre projet depuis l'onglet `Settings`, profitez-en pour tester les droits par utilisateur.

2) Clonez chacun le répertoire pour avoir une copie en local avec la commande `git clone <url_projet>`. Vous trouverez l'url pour cloner le répertoire depuis la page github sous `<>code`. Utiliser `git remote`

3) Faites un seul `commit` et mettez à jour le répertoire distant (github) avec ce commit en utilisant la commande `git push`.

4) Ensuite envoyez ce `commit` sur le local de votre binôme qui ne l'a pas avec la commande `git pull`

## IV/ Les conflits
#### Continuez à utiliser le repertoire de gitlab en binôme.

1) Effectuez tous les deux des modifications différentes sur le même fichier et ensuite utilisez les commandes `git commit` et `git push`
pour appliquer la modification sur le répertoire distant github. Une erreur devrait survenir pour la dernière personne qui exécute la commande `push`.

2) Utilisez `git fetch` et `git rebase` pour importer les modification et régler les problèmes de conflits.

3) Refaire le même processus mais en échanger l'ordre pour que chaque binôme est besoin de "rebase" leur répertoire local.

4) Une autre possibilité si le répertoire local d'une personne est modifier mais n'est pas "commit" et qu'il n'intègre pas les dernière modifications.
Il est toujours possible d'utiliser `git stash` pour temporairement stocké vos modifications en mémoire `git pull` pour apporter les dernière modification et finir avec `git stash apply` pour re-appliquer vos modifications local à noté qu'il sera toujours nécessaire de résoudre les problème de conflit si il y en a.


## V/ Les branches

1) Créez chacun une nouvelle branche dans le projet avec `git branch`

2) Faites du développement sur cette nouvelle branche et utilisez à nouveau les commandes `git commit` et `git push`. Puis exécuter la commande proposer par git.
Aller sur gitlab pour vérifier si votre nouvelle branche apparaît et comparer le dernier commit avec la branche main.

3) Rebasculez sur la branche main et fusionnez la nouvelle branche de développement sur la branche main avec la commande `git merge <branch_name>`, et utilisez si besoin  `git fetch` et `git rebase` pour mettre à jour votre branche avant.


## VI/ Issue et merge/pull request

1) Allez sur gitlab et créez une issue pour ce plaindre du readme sans interêt.

2) Créez ensuite un merge request depuis l'interface de l'issue de votre binôme et retourner sur l'issue pour voir le file d'activité. Vous pouvez aussi tester les commentaires par la même occasion pour discuter avec votre binôme directement dans l'issue.

3) Retournez sur votre réhpertoire local est importer les nouvelles branches `git pull` ou `git fetch`. Faite un nouveau commit qui résout l'issue créée par votre binôme.

4) Retournez à nouveau sur la page du merge request et appliquez les modifications du merge sur la branche master en la validant le merge request. L'issue se fermeras automatiquement aussi les modifications seront appliquées sur la branche main. Bien évidement si votre branche n'est plus à jour avec la master il faut utiliser `git rebase` avant de merge.

## VII/ Licence et autre

1) Dernière étape ajouter une licence à votre projet, vous pouvez utilise la même que sur le répertoire de cette formation. Assurez-vous bien que le nom du fichier est "LICENCE" pour que gitlab ou github puissent la reconnaître.

3) Explorer github ou gitlab pour voir les autres fonctionnalités et regarder d'autre projets plus important.

2) Optionnel pour finir publier votre projet ou le supprimer.
