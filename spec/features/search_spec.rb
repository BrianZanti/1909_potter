require 'rails_helper'

RSpec.describe "Search for Order of the Phoenix members" do
  it 'returns members' do
    visit '/'

    select 'Gryffindor'

    click_on 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('21 Results')

    expect(page).to have_css('.member', count: 21)

    # within first('.member') do
    #   expect(first('.name').text).to_not be_empty
    #   expect(first('.house').text).to_not be_empty
    # end
    #
    # within all('.member')[1] do
    #   expect(first('.name').text).to_not be_empty
    #   expect(first('.role').text).to_not be_empty
    #   expect(first('.house').text).to_not be_empty
    #   expect(first('.patronus').text).to_not be_empty
    # end
    within first('.member') do
      expect(first('.name').text).to_not be_empty
      expect(first('.role').text).to_not be_empty
      expect(first('.house').text).to_not be_empty
      expect(first('.patronus').text).to_not be_empty
    end
  end
end

# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
# And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
