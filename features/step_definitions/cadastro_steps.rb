Dado("que estou na tela {string}") do |nome_tela|
  visit "/new"
  expect(page).to have_text nome_tela
end

Quando("preencho todos os dados do cadastro") do
  find("#user_name").set ("Estevão")
  find("#user_lastname").set ("Perrut")
  find("#user_email").set ("teste@hubfintech.com")
  find("#user_address").set ("Rua Drogasil")
  find("#user_university").set ("Anhanguera")
  find("#user_profile").set ("Analista de Teste e Automação")
  find("#user_gender").set ("Masculino")
  find("#user_age").set ("28")
end

E("clico em criar") do
  click_button "Criar"
end

Então("devo ver os dados do usuário cadastrado e a mensagem {string}") do |confirmacao|
  expect(page).to have_text confirmacao
end

Quando("eu preencho os dados {string}, {string} e {string}") do |nome, sobrenome, email|
  visit "/new"
  find("#user_name").set nome
  find("#user_lastname").set sobrenome
  find("#user_email").set email
  click_button "Criar"
end

Então("devo ver a mensagem de alerta {string}") do |menssagem_erro|
  expect(page).to have_text menssagem_erro
end
