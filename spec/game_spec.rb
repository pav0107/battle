require 'game'

describe Game do
  let(:pav) { Player.new('Pav') }
  let(:karim) { Player.new('Karim') }
  subject(:game) { Game.new }

  describe '#attack' do
    it { is_expected.to respond_to :attack }
  end
end
