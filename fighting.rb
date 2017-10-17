class Fight
  # corrigir conforme scenario
  def initialize()
    @player = player
    @quant_aliens = quant_aliens
  end

  def fight(op1, op2)
    while op1.is_alive && op2.is_alive
      op1.hit(op2)
      op2.hit(op1)
      puts op1
      puts op2
    end
    winner(op1, op2)
  end

  def winner(op1, op2)
    if op1.is_alive
      puts "The #{op1.name} won this battle!"
    elsif op2.is_alive
      puts "The #{op2.name} won this battle!"
    else
      puts "It's a tie!"
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
