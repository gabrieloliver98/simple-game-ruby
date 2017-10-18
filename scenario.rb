require '.\fighting.rb'

# This is the basic class for RandRoom, InitialRoom and FinalRoom
class Scene
  # A default message if the room is not correctly loaded
  def enter()
    puts "\nIf this message is being showed, this room is with a problem :)"
  end

  # This method is responsable for read and show a determined message to the user
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
      puts "\nYou DIE"
      exit(0)
    else
      puts "Learn how to write :P"
      exit(0)
    end
  end
end

# This class is all the rooms with enemies
class RandRoom < Scene
  def initialize()
    @enemie = Alien.new()
  end

  # This method recieve the hero like parameter for he pass for the fight
  def enter(hero)
    puts "\nYou entered in a new room"
    puts "But you don't have the portal key"
    puts "\nNow you will fight with one enemie"
    result()
    puts "The fight will BEGIN:"
    current_fight = Fight.new()
    hero = current_fight.fight(hero, @enemie)
    return hero
  end
end

# Show the initial messages for the user
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

# Show the final messages if the user passa for evething
class FinalRoom < Scene
  def initialize()
    puts "\nYou achived the portal key"
    puts "Now, you can get back home"
    puts "Thanks for playing this game"
    puts "See you next time!"
  end
end
