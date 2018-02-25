Given("I am on the {string}") do |string|
  visit root_path
end

And(/^I send a mail to "([^"]*)"$/) do |name|
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Then(/^I should have "([^"]*)" messages$/) do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end

Given("I click {string} link") do |link_text|
  click_link_or_button link_text
end
