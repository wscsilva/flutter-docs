## *__<p align = "center">Comandos do GIT</p>__*
### **Git inicialização**
git init, inicializa o repositorio
Cria se uma branch default,ela só aparece apos o git commit, quando se cria uma nova branch duplica-se a branch corrente
1. Configuração remota do repositorio
git remote add origin [https://github.com/wscsilva/manual.git]
# Remover repositorio remoto
git remote remove origin
# Principais comando GIT
git status
# Verifica os logs do commit
git log
# Verifica as branchs local
git branch
# Alterna entre branchs
git checkout main, caso não tenha commit na branch para mudar de branch usar o git checkout -b nome_branch
# Criar um branch
git branch -M name_branch
#Verificar a branch atual
git branch --show-current
# Adiciona todos os arquivos da pasta 
git add .
# Remove os arquivos do controle do git
git --cached . ou git --cached nome_arquivo
#  Comita as transações
git commit -m 'descrição da mensagem', no cmd usar ""
# Envia os arquivos comitado do local para o git remoto
git push -u orgin main
Obs.: error: failed to push some refs to 'https://github.com/wscsilva/manual.git'
git push --force origin main
# Verifica o nome do repositorio remoto do git
git remote

GIT IGNORE
1 - Cirar um arquivo .gitignore no diretorio do projeto, para ignorar os arquivos ex.: *.json

create a new repository on the command line
echo "# teste02" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/wscsilva/teste02.git
git push -u origin main

or push an existing repository from the command line
git remote add origin https://github.com/wscsilva/teste02.git
git branch -M main
git push -u origin main

Untracked
UnStage