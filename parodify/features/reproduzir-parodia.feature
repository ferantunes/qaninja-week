#language: pt

Funcionalidade: Reproduzir Paródia
    Sendo um usuário cadastrado
    Quero reproduzir músicas no player do Parodify
    Para que eu possa ouvir as paródias das minhas bandas favoritas

    Contexto: Login
        * Login com "ammdcf@qaninja.com" e "123pwd"

    Cenario: Ouvir Paródia
        Dado que eu gosto muito de "Sertanejo"
        Quando toco a seguinte canção:
            | parodia | Bud de Manhã   |
            | banda   | Marcus e Debug |
        Então essa paródia deve ficar em modo de reprodução