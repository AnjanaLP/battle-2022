feature 'Homepage' do
  scenario 'it displays a welcome message' do
    visit '/'
    expect(page).to have_content "Hello Battle!"
  end
end
