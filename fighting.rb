class Fight
  def initialize(player, quant_aliens)
    @player = player
    @quant_aliens = quant_aliens
  end

  def fight
    @quant_aliens.each {|x| alien[x] = Alien.new() }
    count = 1
    while @player.health > 0 ||
      @player.hit(@quant_aliens - count)

    end
  end
end

class Being
  attr_accessor :health, :power

end

class Player < Being
  def initialize()
    @health = 100
    @power = 20
  end
end

class Alien < Being
  def initialize()
    @health = 20
    @power = 5
  end
end
