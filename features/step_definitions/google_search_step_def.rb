Given(/^Given that I am on the Google Search page$/) do
  visit GoogleSearchPage
end

When(/^I search for "([^"]*)"$/) do |search_text|
  on(GoogleSearchPage).execute_search(search_text)
end

Then(/^the tile of the results page shoud be "([^"]*)"$/) do |page_title|
  on(GoogleSearchPage).result_stats_element.when_present.select
  log(on(GoogleSearchPage).title)
  expect(on(GoogleSearchPage).title).to eq(page_title)
end

Then(/^Do nothing$/) do
  log "do nothing"
end