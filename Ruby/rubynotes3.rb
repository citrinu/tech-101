#methods method will display all available methods for an object
a = "this will display all available methods for an object"
puts a.methods.join(" ")


class PrivateExample

private

  def private_method
    puts "you can't access this"
  end
public

  def public_method
    puts this "is a public method"
  end

  def also_private
    puts "this is made private using a command"
  end

  def protec
    puts "only usable by other instance methods"
  end
#this is the command
private :also_private

#cannot be used directly
protected :protec

end

#nested Classes

class House
  def create_room
    Room.new
  end
  class Room
    def initialize
      puts "a room has been created"
  end
end

ogden = House.new
ogden.create_room
