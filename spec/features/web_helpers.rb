def sign_in_and_play
  visit "/"
  fill_in "player1", with: "Rory"
  fill_in "player2", with: "Dio"
  click_button "Enter"
end
