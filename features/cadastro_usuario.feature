#language: pt

Funcionalidade: Cadastro usuário
Para que eu possa gerenciar os usuários
Sendo um administrador previamente cadastrado
Posso realizar o cadastro dos usuários
   
    Cenario: cadastro válido
    Dado que estou na tela "Novo Usuário!!"
    Quando preencho todos os dados do cadastro
    E clico em criar
    Então devo ver os dados do usuário cadastrado e a mensagem "Usuário Criado com sucesso"