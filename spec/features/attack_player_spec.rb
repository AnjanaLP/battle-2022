feature 'Attack' do
  scenario 'player 1 attacks player 2 and gets confirmation' do
    sign_in_and_play
    click_button "Attack"

    expect(page).to have_content "Alice attacked Bob"
  end

  scenario 'an attack on player 2 reduces their hit points by 10' do
    sign_in_and_play
    click_button "Attack"

    expect(page).not_to have_content "Bob: 50 hit points"
    expect(page).to have_content "Bob: 40 hit points"
  end
end
