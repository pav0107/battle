require 'player'
require 'game'

describe Player do
  subject(:pav) { Player.new('Pav') }
  subject(:karim) { Player.new('Karim') }

  describe '#name' do
    it 'returns the name' do
      expect(pav.name).to eq 'Pav'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(pav.hit_points).to eq 60
    end
  end

  describe '#reduce_HP' do
    it { is_expected.to respond_to :reduce_HP }

    it "reduces Karim's hit points by 10" do
      Game.new(pav, karim).attack(karim)
      expect(karim.hit_points).to eq 50
    end
  end
end
