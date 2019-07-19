require 'rails_helper'

RSpec.describe 'as a user' do
  context 'on the root path' do
    it 'can search members by house' do
      # As a user
      # When I visit "/"
      visit root_path
      # And I select "Greyjoy" from the dropdown
      select "Greyjoy", :from => "house"
      # And I click on "Get Members"
      click_on 'Get Members'
      # Then my path should be "/search" with "house=greyjoy" in the parameters
      expect(current_path).to eq(search_path)
      # And I should see a message "7 Members"
      expect(page).to have_content('7 Members')
      # And I should see a list of the 7 members of House Greyjoy
      expect(page).to have_css('.member', count: 7)
      # And I should see a name and id for each member.```
      within first('.member') do
        expect(page).to have_css('.id')
        expect(page).to have_css('.name')
      end
    end
  end
end


#  You are the new web developer for Westeros. The IT staff has provided an API where you can get a listing of house members.

# Documentation: `https://westerosapi.herokuapp.com/`

# You are to create an app and complete this following user story:



# Your key is: egg