feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Pikachu attacked Meowth'
  end

  # scenario 'reduce Player 2s HP by 10' do
  #   sign_in_and_play
  #   click_link 'Attack'
  #   expect(page).to have_content 'Meowth: 50HP'
  # end

end
