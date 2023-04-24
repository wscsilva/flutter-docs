#### Dicas do Sqlite

### Criar novo Database
1.	Para criar as tabelas novamente é necessario 
2. Deletar o banco de dados no Android Studio
3.	fechar o Database await _sqliteConnectionFactory.closeConnection(); 
4.	Abrir novamente await _sqliteConnectionFactory.openConnection();
para ser executado o _oncreate();

### Atualizar o Database
1.	Para atualizar o database
2.	executar o _onUpgrade(); é necessario alterar o version e 
