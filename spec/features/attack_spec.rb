RSpec.feature "Attack player" do
  scenario "attack player 2" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Karim has attacked Pav!')
  end
end