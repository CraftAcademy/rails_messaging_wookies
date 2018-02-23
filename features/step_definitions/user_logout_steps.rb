When("I click on {string}") do |string|
  click_link(string)
end

Then("I should see message {string}") do |message|
  expect(page).to have_content message
end
