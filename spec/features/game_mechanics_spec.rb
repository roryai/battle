require 'spec_helper'

feature Game do
# # let(:player1) {double(:player)}
# let(:player2) {double(:player, hp: 10)}

  scenario "Switches players" do
    sign_in_and_play
    click_button "Attack!"
    click_button "OK!"
    expect(page).to have_text("Turn: Dio")
    click_button "Attack!"
    expect(page).to have_text("You attacked Elizabeth!")

  end

  scenario "player 2 is reduced to 0 HP" do
    sign_in_and_play
    18.times do
      click_button "Attack!"
      click_button "OK!"
    end
    click_button "Attack!"

    expect(page).to have_text("WINNER!")
  end



end
