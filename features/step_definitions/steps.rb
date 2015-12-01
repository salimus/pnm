Given(/^I am on PayNearMe website$/) do
  how_it_works.home_page
end

When(/^I tap on "([^"]*)" link$/) do |text_link|
  expect(how_it_works.hiw_link.text).to be == text_link
  how_it_works.hiw_link.click
end

Then(/^I will redirect to How It Works page$/) do
  wait(5) { how_it_works.hiw_text.displayed? }
end

And(/^I should see three steps instruction$/) do
  how_it_works.three_steps
end



When(/^I tap on "([^"]*)" link on Menu$/) do |link|
  payment_locations.humburger.click
  expect(payment_locations.payment_loc_link.text).to be == link.upcase
  payment_locations.payment_loc_link.click
  sleep 10
end

And(/^I type "([^"]*)" for location$/) do |address|
  #binding.pry
  payment_locations.address_text_field.click
  payment_locations.address_text_field.send_keys address
end

And(/^I click on Search button$/) do
  payment_locations.search_button.click
end

Then(/^I will see the search results$/) do
  payment_locations.search_results
end
