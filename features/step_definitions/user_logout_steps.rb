Given("following user is logged in") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
    user = User.find_by(name: name)
    login_as(user, scope: :user)
  end
end

Given("I am on the account page") do
  visit root_path
end

When("I click on {string}") do |string|
  click_link(string)
  #expect(page).to have_current_path(destroy_user_session)
end

Then("I should see the page") do
  save_and_open_page
end

Then("I should see message {string}") do |message|
  expect(page).to have_content message
end

Then("I am logged out") do
  pending
end
