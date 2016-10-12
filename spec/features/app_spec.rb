require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "Home page requests a form to enter player name" do
    visit "/"

    fill_in "name", with: "Rory"
    click_button "Enter"

    expect(page).to have_text("Welcome to Battle Rory")
  end
end
