Then(/^Do nothing$/) do
  log "do nothing"
end

Given(/^I have opened google maps as a anonymous user$/) do
  visit GoogleMapsPage
end

When(/^(the user) searches for "(.*?)"$/) do |user, term|
  log "to be implemented"
end

Then(/^(google maps) should have a "(.*?)" search result$/) do |application, search_result|
  log "to be implemented"
end
