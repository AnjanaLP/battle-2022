feature 'View hit points' do
  scenario "player 1 can see player 2's hit points" do
    sign_in_and_play

    expect(page).to have_content "Bob: 50 hit points"
  end
end
