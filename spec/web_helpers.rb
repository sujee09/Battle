def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Pikachu'
  fill_in :player_2_name, with: 'Meowth'
  click_button 'Submit'
end
