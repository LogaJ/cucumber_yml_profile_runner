When /^I run features with the "([^"]*)" profile$/ do |profile_name|
  visit '/'
  select profile_name, :from => 'profile_selector'
  click_on 'Run Tests'
end

Then /^I should see the test results$/ do
    pending # express the regexp above with the code you wish you had
end
