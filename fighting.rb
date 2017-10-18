class Fight

  # Method that reproduces the fight between the opponents
  def fight(op1, op2)
    while op1.is_alive && op2.is_alive
      op1.hit(op2)
      op2.hit(op1)
      puts op1
      puts op2

    end
    winner(op1, op2)
    return op1.is_alive
  end

  # Defines the name of the winner
  def winner(op1, op2)
    if op1.is_alive
      puts "The #{op1.name} WON this battle!"
    elsif op2.is_alive
      puts "The #{op2.name} WON this battle!"
    else
      puts "\nIt's a tie!"
      puts "But you has DIED..."
      exit(0)
    end
  end
end

# Basic class of a being
class Being
  attr_accessor :name, :health, :power

  # give damange to the opponent
  def hit(enemie)
    enemie.health -= self.power
  end
  # defines if the being is alive
  def is_alive()
    self.health > 0
  end
  # show information about the being, if the object is printed on the console
  def to_s()
    "\s\sThe #{self.name} has #{self.health} of health"
  end
end

# Class that represents the user, but just for define the attributes
class Player < Being
  attr_accessor :portal_key
  def initialize()
    @portal_key = false
    @name = 'Hero'
    @health = 100
    @power = 20
  end
end

# Class that represents the enemies
class Alien < Being
  def initialize()
    @name = 'Alien'
    @health = 20
    @power = 5
  end
end
