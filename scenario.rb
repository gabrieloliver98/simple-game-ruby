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

end

class FinalRoom < Scene

end
