Given("following user is logged in") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
    login_as(user, :scope => :user, :run_callbacks => false)
  end
end

Given("I am on the account page") do
  visit root_path
end

When("I click on {string}") do |string|
  click_link(string)
  #expect(page).to have_current_path(destroy_user_session)
end

Then("Show me the main page") do
  save_and_open_page
end

Then("I should see message {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am logged out") do
  pending # Write code here that turns the phrase above into concrete actions
end
