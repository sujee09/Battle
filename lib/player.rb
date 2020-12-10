class Player
  attr_reader :name, :hitpoints

  DEFAULT_HITPOINTS = 60

  def initialize(name, hitpoints = DEFAULT_HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end

end