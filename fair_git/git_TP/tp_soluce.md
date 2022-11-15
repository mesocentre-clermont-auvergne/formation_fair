# Soluce: Introduction to code versioning with git
Mateo Hiriart  
2022-11-14

Lien et commande pour vous aidé:  
&nbsp;&nbsp; Documentation: https://docs.github.com/en  
&nbsp;&nbsp; Equivalent man: https://git-scm.com/doc  
&nbsp;&nbsp; `git help`

## I/ Configuration
```bash
git config --global user.name '<your_name>'
git config --global user.email '<your_email>'
git config --list
```

## II/ Premier test en local
Init:
```bash
git init <project_name>
cd <repo_name>
ll
```
1st commit:
```bash
touch a.txt
git status
git add .
git commit -m "first commit"
```
2nd commit:
```bash
vi a.txt
git status
git add .
git commit -m "modify a.txt"
git log
```


## III/ Projet partagé sur github/gitlab

Gitlab new repo
```bash
git clone <url_project>
git remote -v
```

```bash
touch a.txt
git status
git add .
git commit -m "first commit"
git push origin master
git log
```

## IV/ Les conflits
A faire pour chaque personne
```bash
vi a.txt
git add .
git commit -m "modif"
git push origin master
``` 

```bash
git pull --rebase
vi a.txt
git push origin master
``` 

## V/ Les branches
```bash
git checkout -b test_branch
git branch test_branch
git switch test_branch
git branch -a
```

```bash
git merge test_branch
git status
git mergetool
git commit
git push
```