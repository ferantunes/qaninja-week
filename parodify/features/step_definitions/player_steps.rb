Dado('Login com {string} e {string}') do |email, senha|
    visit "http://parodify.qaninja.com.br"
    click_on "Login"

    find("#user_email").set email
    find("#user_password").set senha
    click_on "Log in"
end
  
Dado('que eu gosto muito de {string}') do |categoria|
    find("a[href='/search/new']").click
    find("img[src$='#{categoria.downcase}.png']").click
    sleep 10
end
  
Quando('toco a seguinte canção:') do |table|
    parodia = table.rows_hash
end
 
Então('essa paródia deve ficar em modo de reprodução') do
    pending # Write code here that turns the phrase above into concrete actions
end
  