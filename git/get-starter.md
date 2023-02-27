### *__<p align = "center">Comandos do GIT</p>__*

#### Criando uma nova branch no repositorio app_sapao

1. Copiar o diretorio da versão que deseja clonar
2. Apagar o diretorio .git
3. Inicialiar o Git no diretorio 
``` git init ```
4. Alternar para nova branch
``` git checkout -b v1.0.5 ```
5. Commit na nova branch
``` git c "new version of the v5_prd" ```
6. Enviar as alterações para o Git
```  git push origin v1.0.5 ```


### **Inizilizar o repositório**
```sh
git init
``` 
Cria uma branch default, ela só aparece apos o git commit, quando se cria uma nova branch duplica-se a branch corrente
1. Configuração remota do repositorio
git remote add origin https://github.com/wscsilva/manual.git
### Remover repositorio remoto
`git remote remove origin`
### Principais comando GIT
`git status`
### Verifica os logs do commit
`git log`
### Verifica as branchs local
`git branch`
### Alterna entre branchs
`git checkout main`
 caso não tenha commit na branch para mudar de branch usar 
 `git checkout -b nome_branch`
### Criar um branch
`git branch -M name_branch`
###Verificar a branch atual
`git branch --show-current`
### Adiciona todos os arquivos da pasta 
`git add .`
### Remove os arquivos do controle do git
`git --cached . ou git --cached nome_arquivo`
###  Comita as transações
`git commit -m 'descrição da mensagem'`
 no cmd usar ""
### Envia os arquivos comitado do local para o git remoto
`git push -u orgin main`
Obs.: error: failed to push some refs to 'https://github.com/wscsilva/manual.git'
`git push --force origin main`
### Verifica o nome do repositorio remoto do git
`git remote`

### GIT IGNORE
1 - Cirar um arquivo .gitignore no diretorio do projeto, para ignorar os arquivos ex.: *.json

### create a new repository on the command line
echo "### teste02" >> README.md
```sh
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/wscsilva/teste02.git
git push -u origin main
```
or push an existing repository from the command line
```sh
git remote add origin https://github.com/wscsilva/teste02.git
git branch -M main
git push -u origin main
```

Untracked
UnStage