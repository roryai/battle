def sign_in_and_play
  visit "/"
  fill_in "player_1", with: "Elizabeth"
  fill_in "player_2", with: "Dio"
  click_button "Enter"
end
