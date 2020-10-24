Dado("que acesso a página login") do
    visit "http://parodify.qaninja.com.br"
    click_on "Login"
end
  
Quando("submeto minhas credenciais com: {string} e {string}") do |email, senha|
    find("#user_email").set email
    find("#user_password").set senha
    click_on "Log in"
end

Então('devo ver a mensagem de erro: {string}') do |expect_message|
    message = find(".message .message-body").text
    expect(message).to eql expect_message
  end
  