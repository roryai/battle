require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "Home page requests a form to enter player name" do

    sign_in_and_play

    expect(page).to have_text("Welcome to Battle")
    expect(page).to have_text("Elizabeth vs Dio")
  end
end
