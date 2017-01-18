require 'spec_helper'


feature "Players filling name" do

  scenario "Expect players to fill form" do
    sign_in_and_play
    click_button 'See Hit Points'
    expect(page).to have_content '100'
  end
end
