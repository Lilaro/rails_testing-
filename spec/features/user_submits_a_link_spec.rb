require "rails_helper"

RSpec.feature "User submits a link" do #.feature gives access to all capybara methods. The string it takes is usually the name of the file
  scenario "they see the page for the submitted link" do #scenario is a container for one specification
    link_title = "This testing rails book is awesome!"
    link_url = "http://testingrailsbook.com"

    visit root_path
    click_on "Submit a new link"
    fill_in link_title, with: link_title #click_on and fill_in are capybara methods.
    fill_in link_url, with: link_url #we are giving fill_in the ids link_title and link_url
    click_on "Submit!"

    expect(page).to have_link link_title, href: link_url 
    #expect and .to build an assertion.
    #`page` is a value provided by capybara that gives us `has_link?` which corresponds with `have_link`.
    #can be read as if page.has_link? is false, return an error
  end
end

#Psuedocode:
# As a user
# When I visit the home page
# And I click "Submit a link post"
# And I fill in my title and URL
# And I click "Submit"
# Then I should see the title on the page And it should link to the given URL
