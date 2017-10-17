class Fight
  # corrigir conforme scenario
  def initialize(player, enemie)
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

  def winner(op1, op2)
    if op1.is_alive
      op1.
    elsif op2.is_alive

    else

    end
  end
end

class Being
  attr_accessor :name, :health, :power
  def hit(enemie)
    enemie.power -= self.power
  end

  def is_alive(being)
    being.heath > 0
  end

  def to_s(op1, op2)
    "You has #{op1.health} of health and the alien #{op2.health}"
  end
end

class Player < Being
  def initialize()
    @name = 'Hero'
    @health = 100
    @power = 20
  end
end

class Alien < Being
  def initialize()
    @name = 'Hero'
    @health = 20
    @power = 5
  end
end
