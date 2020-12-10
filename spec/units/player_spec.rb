require 'player'

describe Player do
  subject(:player) { Player.new('Suje') }

  it 'creates a new instance of a player with the name Suje' do
    expect(subject.name).to eq('Suje')
  end

end