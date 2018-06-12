#alternative comment style
#=begin
#end


#ruby is interpreted, objection oriented, and high level.
#ruby is case sensitive
#everything is an object so has methods
#methods can be chain seperated by .
x.method.method

#traditional array
fruits.[]("apple","orange")

#allows for escape sequences
""



#using array.each
  source = [1,2,3,4,5,6]
  def array_copy(source)
    destination = []
    source.each do |number|
      if number < 4
        destination << number
      end
    end
    return destination
  end

  puts array_copy(source)

  #Hashes

temp_settings = {"Off" => 0, "cold" => 1, "warm" => 2}
