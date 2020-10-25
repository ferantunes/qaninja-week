#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenario: login do usuário
        Dado que acesso a página login
        Quando submeto minhas credenciais com: "ammdcf@qaninja.com" e "123pwd"
        Então devo ser redirecionado para a área logada

    Esquema do Cenario: Tentativa de login
        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email               | senha  |
            | fernanda@404.com.br | abc123 |
            |                     |        |
            | fernanda@gmail.com  |        |
            | fernanda@404.com.br |        |