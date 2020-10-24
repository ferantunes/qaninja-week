#language:pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

@happy
Cenario: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        | email          | fcdmma@qaninja.com |
        | senha          | pwd123             |
        | senha_confirma | pwd123             |
    Então devo ser redirecionado para a área logada

Esquema do Cenario: Tentativa de login
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        | email          | <email>          |
        | senha          | <senha>          |
        | senha_confirma | <confirma_senha> |
    Então devo ver a mensagem: "<mensagem>"

    Exemplos:
    | email              | senha  | confirma_senha | mensagem                             |
    |                    | pwd123 | pwd123         | Oops! Informe seu email.             |
    | fcdmma@qaninja.com |        |                | Oops! Informe sua senha.             |
    | fcdmma@qaninja.com | pwd123 | abc123         | Oops! Senhas não são iguais.         |
    |                    |        |                | Oops! Informe seu email e sua senha. |