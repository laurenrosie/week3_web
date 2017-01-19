require 'spec_helper'


feature "Players switching attacker" do

  scenario "Rob is first attack" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Rob is attacking'
  end

  scenario "Lauren is second attack" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Attack'
    expect(page).to have_content 'Lauren is attacking'
  end
end
