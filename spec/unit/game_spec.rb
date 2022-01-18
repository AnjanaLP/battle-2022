require 'game'

describe Game do
  subject(:game)            { described_class.new(player_1, player_2) }
  subject(:finished_game)   { described_class.new(player_1, losing_player) }
  let(:player_1)            { double :player, hit_points: 60 }
  let(:player_2)            { double :player, hit_points: 60 }
  let(:losing_player)       { double :player, hit_points: 0}

  describe '#player_1' do
    it 'returns the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the given player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    context 'at the start of game' do
      it 'returns player 1' do
        expect(game.current_turn).to eq player_1
      end
    end
  end

  describe '#switch_turns' do
    it 'changes the current turn to the opponent' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#current_opponent' do
    context 'when current player is player_1' do
      it 'returns player_2' do
        expect(game.current_opponent).to eq player_2
      end
    end

    context 'when current player is player_2' do
      it 'returns player_1' do
        game.switch_turns
        expect(game.current_opponent).to eq player_1
      end
    end
  end

  describe '#over?' do
    context 'when none of the players have zero hit points' do
      it 'returns false' do
        expect(game.over?).to be false
      end
    end

    context 'when any of the players have zero hit points' do
      it 'returns true' do
        expect(finished_game.over?).to be true
      end
    end
  end

  describe '#loser' do
    context 'when there is no game over' do
      it 'returns nil' do
        expect(game.loser).to eq nil
      end
    end

    context 'when the game is over' do
      it 'returns the player with zero hit points' do
        expect(finished_game.loser).to eq losing_player
      end
    end
  end

  describe '.instance' do
    it 'returns the created game instance' do
      game = Game.create(player_1, player_2)
      expect(Game.instance).to eq game
    end
  end
end
