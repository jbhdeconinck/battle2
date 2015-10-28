require './app'

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature "entering name" do
  scenario "fill in players names" do
    sign_in_and_play
    expect(page).to have_content("Julien vs. Rajeev")
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature "see how I am winning" do
  scenario "see Player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content("Rajeev's HP: 60")
  end
end

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "attack player 2" do
  scenario "attack player 2 and get confirmation" do
    sign_in_and_play
    click_button('Attack player 2')
    expect(page).to have_content("Julien attacked Rajeev")
  end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

feature "attack player 2" do
  scenario "attack player 2 and get confirmation" do
    sign_in_and_play
    click_button('Attack player 2')
    expect(page).to have_content("Julien attacked Rajeev")
  end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

feature "reduce Player 2's HP" do
  scenario "attack player 2 and reduce his hit points by 10 points" do
    sign_in_and_play
    click_button('Attack player 2')
    expect(page).not_to have_content("Rajeev's HP: 60")
    expect(page).to have_content("Rajeev's HP: 50")
  end
end
