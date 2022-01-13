class Player
  STARTING_HIT_POINTS = 50
  DAMAGE_POINTS = 10

  attr_reader :name, :hit_points

  def initialize(name, hit_points = STARTING_HIT_POINTS)
    @name = name
    @hit_points = STARTING_HIT_POINTS
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= DAMAGE_POINTS
  end
end
