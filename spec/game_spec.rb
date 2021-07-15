require 'game'

describe Game do
  let(:player_1) { double('player') }
  let(:player_2) { double('player') }
  subject(:game) { Game.new(player_1, player_2) }

  describe 'it has stores players' do
    it 'is expected to store player1' do
      expect(game.player_1).to eq(player_1)
    end

    it 'is expected to store player2' do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#attack' do
    it { is_expected.to respond_to :attack }
  end
end
