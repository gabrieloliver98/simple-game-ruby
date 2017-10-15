class Fight

end

class Being
  attr_accessor :health, :power

end

class Player
  def initialize()
    @health = 100
    @power = 20
  end
end

class Alien
  def initialize()
    @health = 20
    @power = 5
  end
end
