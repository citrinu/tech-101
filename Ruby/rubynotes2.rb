#advances strings - here document
{
x = <<END_MY_STRING_PLEASE
This is the string
And a second line
END_MY_STRING_PLEASE
}




http://stackoverflow.com/a/12924565
class Animal

  attr_accessor :name, :status # can read/write
  attr_reader :legs, :sound # can read
 #attr_writer :thing  can write
  def initialize
    @name = "tim"
    @legs = 4
    @sound = "*animal sound*"
    @status = "alive"
    #intro
  end

  def intro
    puts "#{@sound}, I am #{@name}. I have #{@legs} legs and I am #{@status}."
  end
end

pig = Animal.new
pig.name  = "fred"
pig.status = "dead"
puts "#{pig.name} has #{pig.legs} legs and is #{pig.status} :l"



{#regualar expressions
 # /start         /end
 # ^^ anchor, match from the start to,  $ match from the end
 # .. replace xm any characters based on anchor point

  #replace first two characters with 'Hello'
  x = "This is a test"
  puts x.sub(/^../, 'Hello')
  puts x.sub(/..$/, 'Hello')

  #\w means “any alphanumeric character or an underscore. special characters
  # x+ match as many x as follows. modifier
}


#inheritance
{

  class Vehicle
    attr_accessor :speed, :wheels, :name, :brand

    def initialize
      @speed = 30
      @wheels = 4
      @name = "Vehicle"
      @brand = "Test"
    end

    def intro
      puts "I go #{@speed} speeds. I have #{@wheels} wheels. I am a #{@name}."
    end
  end

#ruby only supports single inheritance

  class Bike < Vehicle
    def initialize
      super #brings in parent variables, ex: Brand
      @speed = 4
      @wheels = 2
      @name = "Bike"
    end
  end

  Roadgo = Bike.new
  puts Roadgo.speed
  puts Roadgo.wheels
  puts Roadgo.name
  puts Roadgo.brand



}

#subroutine/method
#this is a "class-less" method
{
  def solo_method
    puts "I belong to the object class secretly"
  end

  solo_method
}

#advanced flow control
{
  led_color = "blue"
  #<condition> ? <result if condition is true> : <result if condition is false>
  result = led_color == "blue" ? "cool" : "slow"
  puts result
}
