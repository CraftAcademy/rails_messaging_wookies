Given("following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Then("I see {string}") do |string|
  expect(page).to have_content string
end

When("I click {string} link") do |string|
  click_link(string)
end

When("I choose {string} as a {string}") do |value, option|
  select(value, :from => option)
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end

And(/^I send a mail to "([^"]*)"$/) do |name|
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Given("I am on the {string}") do |string|
  visit root_path
end

Then("I am redirected to my inbox") do
  visit '/mailbox/inbox'
end

Then(/^I should have "([^"]*)" messages$/) do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end
