require_relative 'animal'

class Lion < Animal
  def talk
    return "#{@name} roars"
  end
end
