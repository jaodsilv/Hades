Given(/^I am at the starting page$/) do
  visit root_path
end

Given(/^I am signed in$/) do
   expect(page).to have_content("Sair")
end

Given(/^I am not signed in$/) do
   expect(page).not_to have_content("Sair")
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
