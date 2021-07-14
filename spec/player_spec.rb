require 'player'

describe Player do
  subject(:pav) { Player.new('Pav') }

  describe '#name' do
    it 'returns the name' do
      expect(pav.name).to eq 'Pav'
    end
  end
end