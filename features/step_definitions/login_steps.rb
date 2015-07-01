Given(/^exists user with email "(.+)" and password "(.+)"$/) do |email, password|
  User.new(nome: email, email: email, password: password, password_confirmation: password).save!
end

Then(/^I should be signed in$/) do
   expect(page).to have_content("Sair")
end