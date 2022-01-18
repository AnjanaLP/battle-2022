feature 'View hit points' do
  scenario "see player 2's hit points" do
    sign_in_and_play

    expect(page).to have_content "Bob: 60 hit points"
  end

  scenario "see player 1's hit points" do
    sign_in_and_play

    expect(page).to have_content "Alice: 60 hit points"
  end
end
