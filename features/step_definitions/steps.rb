def login(user)
  visit login_path
  fill_in "Username", with: user.username
  fill_in "Password", with: user.password
  click_on "Log in"
end

Given /^I am the user "([^"]*)" and I am logged in$/ do |name|
  @user = Factory(:user, username: name)
  login(@user)
end

Given /^I am on my dashboard page$/ do
  visit "/"
end

When /^I hit "([^"]*)"$/ do |link|
  click_on link
end

When /^I click on "([^"]*)"$/ do |link|
  click_on link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, with: value
end

Then /^I see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Given /^I am user "([^"]*)" with password "([^"]*)"$/ do |name, password|
  @user = Factory(:user, username: name, password: password)
end

When /^I go to the login page$/ do
  visit login_path
end

Given /^I am a logged in user$/ do
  @user = Factory(:user)
  login(@user)
end

Given /^there are threads like this:$/ do |table|
  table.hashes.each do |row|
    Factory(:forum_thread, title: row["title"], body: row["body"])
  end
end

When /^I go to the thread index page$/ do
  visit threads_path
end

Then /^I see all the thread titles$/ do
  ForumThread.all.each do |thread|
    page.should have_content thread.title
  end
end

Given /^there is a thread named "([^"]*)"$/ do |title|
  Factory(:forum_thread, title: title)
end

Given /^I am on the thread index page$/ do
  visit threads_path
end



Given /^I am an unregistered user$/ do
  # nothing!
end

Given /^I am on the registration page$/ do
  visit "/register"
end

