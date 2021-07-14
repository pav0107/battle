RSpec.feature "Hit points" do
  scenario "displaying hit points" do
    visit "/"
    fill_in('player_1_name', with: 'Karim')
    fill_in('player_2_name', with: 'Pav')
    click_button('Submit')
    expect(page).to have_content('Pav: 60HP')
  end
end