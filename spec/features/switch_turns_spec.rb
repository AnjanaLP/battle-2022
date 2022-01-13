feature 'Switch turns' do
  context "see which player's turn it is" do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Alice's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button "Attack"
      expect(page).not_to have_content "Alice's turn"
      expect(page).to have_content "Bob's turn"
    end
  end
end
