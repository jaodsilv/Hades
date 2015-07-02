Given(/^I am at the starting page$/) do
  visit root_path
end

Given(/^I am signed in$/) do
  visit('/users/sign_out') # ensure that at least
  nome = "Mario"
  email = "mario@andrade.com"
  password = "Mamma mia"
  User.new(nome: nome, email: email, password: password, password_confirmation: password).save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
end

Given(/^I am not signed in$/) do
  current_driver = Capybara.current_driver
  begin
    Capybara.current_driver = :rack_test
    page.driver.submit :get, "/users/sign_out", {}
  ensure
    Capybara.current_driver = current_driver
  end
end

When(/^I fill in "(.+)" with "(.+)"$/) do |campo, text|
  fill_in campo, :with => text
end

When(/^I click the option "(.+)" for "(.+)"$/) do |text, menu|
  expect(page).to have_content(menu)
  click_button(text)
end

When(/^I click "(.+)"$/) do |text|
  click_button(text)
end

Then(/^I should see "(.+)"$/) do |text|
  expect(page).to have_content(text)
end