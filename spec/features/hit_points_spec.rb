require 'spec_helper'

RSpec.feature Battle, :type => :feature do
  scenario "Allow Player 1 to see player 2's HP" do

    sign_in_and_play

    expect(page).to have_text("Dio HP: 100")
  end
end
