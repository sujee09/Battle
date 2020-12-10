require 'player'

describe Player do
  subject(:pikachu) { Player.new('Pikachu') }
  subject(:meowth) {Player.new('Meowth') }

  describe '#names' do
    it 'creates a new instance of a player with the name Pikachu' do
      expect(pikachu.name).to eq('Pikachu')
    end

    it 'creates a new instance of a player with the name Meowth' do
      expect(meowth.name).to eq('Meowth')
    end
  end

  describe '#hitpoints' do
    it 'returns the hitpoints' do
      expect(pikachu.hitpoints).to eq described_class::DEFAULT_HITPOINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(meowth).to  receive(:receive_damage)
      pikachu.attack(meowth)
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hitpoints' do
      expect { meowth.receive_damage }.to change { meowth.hitpoints }.by(-10)
    end
  end
  
end