require 'spec_helper'

feature Game do

  scenario "Switches players" do
    sign_in_and_play
    click_button "Attack!"
    click_button "OK!"
    expect(page).to have_text("Turn: Dio")
    click_button "Attack!"
    expect(page).to have_text("You attacked Elizabeth!")

  end


end
