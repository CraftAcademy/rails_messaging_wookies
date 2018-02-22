Given("following user exist") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Given("I am on the landing-page") do
  visit root_path
end

Given("I click {string}") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |input, value|
  fill_in(input, :with => value)
end

When("I click {string} button") do |name|
  click_button(name)
end

Given("I am logged in") do
  user = FactoryBot.create(:user)
  login_as(user, :scope => :user, :run_callbacks => false)
end

Then("show me the page") do
  save_and_open_page
end

Then("I should see {string}") do |message|
  expect(page).to have_content(message)
end
