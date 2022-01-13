feature 'Enter player names' do
  scenario 'fill in player names and see them' do
    sign_in_and_play

    expect(page).to have_content "Alice Vs Bob"
  end
end
