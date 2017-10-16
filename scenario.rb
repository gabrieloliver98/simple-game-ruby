require 'fighting.cs'

class Scene

end

class RandRoom < Scene
  attr_accessor :portal_key
  def initialize()
    @enemie = Alien.new()
  end

  def enter(hero)
    puts "You entered in a new room"
    puts "You stil not has the portal key"
    puts "Now you will fight with one enemie"
    fight = Fight.new()
    fight.fight(hero, @enemie)
    alive = fight.is_alive()
    return alive
  end
end

class InitialRoom < Scene
  def self.enter(hero)
    puts "You woke up in a stange place."
    puts "You see a couple of aliens."
    puts "They explain to you that they have captured you."
    puts "And they want you to explain how to make your techology of portal key"
    puts "You can't do that, so they tell if you not cooperate, they don't will give your portal key back."
    puts "What will you do?"
    puts ">"
  end
end

class FinalRoom < Scene
  def self.enter(hero)
    puts "You achived the portal key"
    puts "Now, you can get back home"
    puts "Thanks for playing this game"
    puts "See you next time!"

  end
end
