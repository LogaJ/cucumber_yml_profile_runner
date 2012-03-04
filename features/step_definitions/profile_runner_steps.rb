When /^I run features with the "([^"]*)" profile$/ do |profile_name|
  visit '/'
  page.select profile_name, :from => 'profile_selector'
end

Then /^I should see the test results$/ do
    pending # express the regexp above with the code you wish you had
end
