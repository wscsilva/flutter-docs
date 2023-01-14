## Criando atalhos para o GIT

### Configurar para abrir no VsCode
```sh 
git config --global core.editor code
git config --global --edit
```
### Abrir a configuração no VsCode
```sh
[core]
	editor = code --wait 
[alias]
	c = !git add --all && git commit -m
	s = !git status -s
	l = !git log --pretty=format:'%C(blue)%h%C(red)%d %C(white)%s - %C(cyan)%cn, %C(green)%cr'
	t = !sh -c 'git tag -a $1 -m $1' -
	amend = !git add --all && git commit --amend --no-edit
	count = !git shortlog -s --grep
[push]
	followTags = true
```	