When("user visit the site") do
  visit root_path
end

Then("user click on {string} button") do |button|
  click_on(button)
end

Then("He fills in {string} with {string}") do |input, value|
  fill_in(input, :with => value)
end

Then("He clicks {string}") do |button|
  click_on(button)
end

Then("He sees message {string}") do |message|
  expect(page).to have_content message
end
