require '.\scenario.rb'
require '.\fighting.rb'

# Classa that runs all the game
class Engine
  def initialize()
    @hero = Player.new()
  end

  # That method executes all the code for generate all the game.
  def play()
    InitialRoom.new()
    where_is_portalkey = rand(1..10)
    count = 1
    while @hero.portal_key == false && @hero.is_alive()
        current_room = RandRoom.new()
        if count == where_is_portalkey
          @hero.portal_key = true
        end
        current_room.enter(@hero)
        count += 1

    end
    FinalRoom.new()
  end
end

a_game = Engine.new()
a_game.play
