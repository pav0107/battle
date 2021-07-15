def sign_in_and_play
  visit '/'
  fill_in('player_1_name', with: 'Karim')
  fill_in('player_2_name', with: 'Pav')
  click_button('Submit')
end
