require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "confirms when player is attacked" do

    sign_in_and_play
    click_button "Attack Player 2"

    expect(page).to have_text("You attacked player 2!")
  end
end
