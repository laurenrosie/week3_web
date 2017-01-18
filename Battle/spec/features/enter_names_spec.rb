require 'spec_helper'


feature "Players filling name" do

  scenario "Expect players to fill form" do
    visit('/')
      fill_in :player_1_name, with: 'Rob'
      fill_in :player_2_name, with: 'Lauren'
    click_button 'Submit'
    expect(page).to have_content 'Rob vs. Lauren'
  end
end
