require '.\fighting.rb'

class Scene
  def enter()
    puts "If this message is being showed, this room is with a problem :)"
  end

  def result()
    puts "What will you do?"
    print ">"
    command = $stdin.gets.chomp
    command.downcase!
    if command == "attack"
      puts "The aliens run way, but you still without your portal key"
    elsif command == "cry"
      puts "The aliens will kill you"
      puts "You are dying"
      puts "When...suddenly..."
      puts "You DIE"
      exit(0)
    else
      puts "Learn how to write :P"
      exit(0)
    end
  end
end

class RandRoom < Scene
  attr_accessor :portal_key
  def initialize()
    @enemie = Alien.new()
  end

  def enter(hero)
    puts "You entered in a new room"
    puts "But you don't have the portal key"
    puts "Now you will fight with one enemie"
    result()
    current_fight = Fight.new()
    alive = current_fight.fight(hero, @enemie)
    return alive
  end
end

class InitialRoom < Scene
  def initialize()
    puts "You woke up in a stange place."
    puts "You see some aliens."
    puts "They explain to you that they have captured you."
    puts "And they want you to explain how to make your techology of portal key"
    puts "You can't do that, so they tell if you not cooperate, they don't will give your portal key back."
    result()
  end
end

class FinalRoom < Scene
  def initialize()
    puts "You achived the portal key"
    puts "Now, you can get back home"
    puts "Thanks for playing this game"
    puts "See you next time!"
  end
end
