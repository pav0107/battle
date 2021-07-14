RSpec.feature "Battle" do
  scenario 'homepage opening' do
    visit "/"

    expect(page).to have_text("Testing infrastructure working!")
  end

  scenario "prints input names on screen" do
    visit "/start_battle"
    fill_in('player1', with: 'Karim')
    fill_in('player2', with: 'Pav')
    click_button('Submit')
    expect(page).to have_text("Karim")
    expect(page).to have_text("Pav")
  end
end