#language: pt

Funcionalidade: Cadastro usuário
Para que eu possa gerenciar os usuários
Sendo um administrador previamente cadastrado
Posso realizar o cadastro dos usuários
   @cadastro_happy
    Cenario: cadastro válido
    Dado que estou na tela "Novo Usuário!!"
    Quando preencho todos os dados do cadastro
    E clico em criar
    Então devo ver os dados do usuário cadastrado e a mensagem "Usuário Criado com sucesso"
   
    @cadastro_bad
    Esquema do Cenario: Cadastro sem sucesso

        Quando eu preencho os dados <nome>, <sobrenome> e <email>
        Então devo ver a mensagem de alerta <texto>

        Exemplos:
        | nome      | sobrenome   | email              | texto                       |
        | "Sabrina" | "Oliveira"  | ""                 | "Email translation missing" |
        | ""        | "rodrigues" | "mayele@teste.com" | "Name translation missing"  |