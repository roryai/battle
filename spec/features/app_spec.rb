require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "Home page requests a form to enter player name" do
    visit "/"

    fill_in "player1", with: "Rory"
    fill_in "player2", with: "Dio"
    click_button "Enter"

    expect(page).to have_text("Welcome to Battle")
    expect(page).to have_text("Rory vs Dio")
  end
end
