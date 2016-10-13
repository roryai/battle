require 'spec_helper'

feature Game do

  scenario "Switches players" do
    sign_in_and_play
    click_button "Attack!"
    click_button "OK!"
    expect(page).to have_text("Turn: Dio")

  end


end
