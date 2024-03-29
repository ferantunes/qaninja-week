Dado('Login com {string} e {string}') do |email, senha|
    goto_login()
    login_with(email, senha)
end
  
Dado('que eu gosto muito de {string}') do |categoria|
    find("a[href='/search/new']").click
    find("img[src$='#{categoria.downcase}.png']").click
end
  
Quando('toco a seguinte canção:') do |table|
    @parodia = table.rows_hash

    find("a", text: @parodia[:banda]).click
    song = find(".song-item", text: @parodia[:parodia])
    song.find(".fa-play-circle").click
end
 
Então('essa paródia deve ficar em modo de reprodução') do
    song_play = find(".playing")
    expect(song_play).to have_text @parodia[:parodia]
end
  