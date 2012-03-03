When /^I navigate home$/ do
  visit '/'
end

Then /^I should see the search bar$/ do
  if ENV['APP'] == 'google'
    page.has_css?('.gbtcb').should be_true
  else
    page.has_css?('.input-query').should be_true
  end
end
