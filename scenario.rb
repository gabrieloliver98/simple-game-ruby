require 'fighting.cs'

class Scene

end

class RandRoom < Scene
  attr_accessor :portal_key
  def initialize()
    enemies = rand(0..10)
    alive = Fight(enemies)
  end
end

class InitialRoom < Scene

end

class FinalRoom < Scene

end
