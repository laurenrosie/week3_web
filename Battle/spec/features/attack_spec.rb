require 'spec_helper'

feature "Players attacking" do
  scenario "Expect players to attack and confirm" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Rob is attacking'
  end
  scenario "Expect an attack to reduce a player's points" do
    sign_in_and_play
    click_button 'Attack'
    expect(page). to have_content 50
  end

end
