Then(/^Do nothing$/) do
  log "do nothing"
end

Given(/^I am on the Amtrak\.com website$/) do
  visit ReservationSearchPage
end

When(/^I view my reservation (.*)$/) do |reservation_number|
  @yml_res_data = load_yml_data(reservation_number)
  @reservation_number = reservation_number
  on(ReservationSearchPage).search_reservation reservation_number
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