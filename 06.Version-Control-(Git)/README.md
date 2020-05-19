# Notes
1. `$ git log --all --graph --decorate` visualizes history as a DAG.
2. `$ git branch` shows branches.
3. `$ git branch <name>` creates a branch.
4. `$ git remote` lists remotes.
5. `$ git remote add <name> <url>` adds a remote.
6. `$ git push <remote> <local branch>:<remote branch>` sends objects to remote, and update remote reference.
7. `$ git branch --set-upstream-to=<remote>/<remote branch>` sets up correspondence between local and remote branch

# Exercises
## Exercise 1
Omitted.  

## Exercise 2
`$ git clone https://github.com/missing-semester/missing-semester`

`$ git log --all --graph --decorate`

`$ git log README.md`

## Exercise 3
Omitted  

## Exercise 4
Omitted  

## Exercise 5
Add the following to **~/.gitconfig**:  
  
[alias]  
graph="log --all --graph --decorate --oneline"

## Exercise 6
Omitted  

## Exercise 7
Omitted  