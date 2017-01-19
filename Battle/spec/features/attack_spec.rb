require 'spec_helper'

feature "Players attacking" do
  binding.pry
  scenario "Expect players to attack and confirm" do
    sign_in_and_play
    click_button 'Attack player 2'
    expect(page).to have_content 'Attacked player 2!'
  end
end
