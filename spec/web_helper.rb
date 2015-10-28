def sign_in_and_play

  visit('/')
  fill_in("player_1_name", with: "Julien")
  fill_in("player_2_name", with: "Rajeev")
  click_button('Submit')

end
