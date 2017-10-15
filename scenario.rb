require 'fighting.cs'

class Scene

end

class RandRoom < Scene
  attr_accessor :portal_key
  def initialize()
    @enemies = rand(0..10)
  end

  def enter()
    puts "You entered in a new room"
    puts "You stil not has the portal key"
    puts "Now you will fight with #{@enemies} enemies"
    fight = Fight.new()
    alive = fight(@enemies)
    return alive
  end
end

class InitialRoom < Scene
  def self.enter()
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
  def self.enter()
    puts "You achived the portal key"
    puts "Now, you can get back home"
    puts "Thanks for playing this game"
    puts "See you next time!"

  end
end
