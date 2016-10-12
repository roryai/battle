require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "Allow Player 1 to see player 2's HP" do

    visit "/"
    fill_in "player1", with: "Rory"
    fill_in "player2", with: "Dio"
    click_button "Enter"

    expect(page).to have_text("Dio HP: 100")
  end
end
