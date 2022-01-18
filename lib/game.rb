class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = current_opponent
  end

  def current_opponent
    @current_opponent = not_the_current_player.first
  end

  def over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private

  attr_reader :players

  def not_the_current_player
    players.select { |player| player != current_turn }
  end

  def losing_players
    players.select { |player| player.hit_points == 0 }
  end
end
