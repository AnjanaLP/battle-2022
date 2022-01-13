feature 'Enter player names' do
  scenario 'fill in player names and see them' do
    visit '/'
    fill_in :player_1_name, with: "Alice"
    fill_in :player_2_name, with: "Bob"
    click_button "Submit"

    expect(page).to have_content "Alice Vs Bob"
  end
end
