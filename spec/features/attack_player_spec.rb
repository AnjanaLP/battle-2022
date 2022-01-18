feature 'Attack' do
  context 'see confirmation of the attack' do
    scenario 'player 1 attacks player 2' do
      sign_in_and_play
      click_button "Attack"
      expect(page).to have_content "Alice attacked Bob"
    end

    scenario 'player 2 attacks player 1' do
      sign_in_and_play
      attack_and_confirm
      click_button "Attack"
      expect(page).to have_content "Bob attacked Alice"
    end
  end

  context 'see reduced hit points of the attacked player' do
    scenario "player 1 attacks player 2" do
      sign_in_and_play
      click_button "Attack"
      expect(page).not_to have_content "Bob: 60 hit points"
      expect(page).to have_content "Bob: 50 hit points"
    end

    scenario "player 2 attacks player 1" do
      sign_in_and_play
      attack_and_confirm
      click_button "Attack"
      expect(page).not_to have_content "Alice: 60 hit points"
      expect(page).to have_content "Alice: 50 hit points"
    end
  end
end
