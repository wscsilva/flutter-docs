## Configuração do fvm
 1. Criar o projeto
```sh
flutter create --platforms android --org br.com.diasesilva --project-name imagem_testes ./imagem_testes
```

### Lista todas as versões do flutter disponivel
`fvm releases`

Diretorio das versoes instalada
`C:\Users\Wilson\fvm\versions`

Caso não haja a versao 3.3.9 do flutter ele vai instalar, executar em modo administrado
`C:\DevPrograms\flutter-projetos\imagem_testes> fvm use 3.3.9`

`fvm use flutter-version`

https://fvm.app/docs/getting_started/configuration

### Configuração no vscode
1. Criar o arquivo .vscode/settings.json no diretoriodo projeto
2. Colar o script

```sh
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk",
  // Remove .fvm files from search
  "search.exclude": {
    "**/.fvm": true
  },
  // Remove from file watching
  "files.watcherExclude": {
    "**/.fvm": true
  }
}
```

> Observação: dentro do diretorio .fvm do projeto tem um arquivo `fvm_config.json` que aponta para o flutter