RSpec.feature "Hit points" do
  scenario "displaying hit points" do
    sign_in_and_play
    expect(page).to have_content('Pav: 60HP')
  end
end