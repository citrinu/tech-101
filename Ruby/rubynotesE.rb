# the splat* operaor lets you call any amount of arguments

def multiple_vars(*any_amount)
  #code here
end

multiple_vars(1,3,4,5)

def array_to_list(fnumber, snumber,tnumber)
  #code
end

array_of_nums = [4, 5, 6, 3]
array_to_list(*array_of_nums)


names = ["bob", "bobby", "fred"]

def introduction(name, age, gender)
  puts "Hello #{name}, you are #{age} years old, and a #{gender}"
end

introduction(*names, 25, "male")

names = ["bob", "bobby", "fred"]

def introduction(*name, age, gender)
  puts "Hello #{name}, you are #{age} years old, and a #{gender}"
end

introduction(names.join(", "), 25, "male")

def introduction(age, gender, *names)
  puts "Hello #{names.join(" ")}, you are #{age} years old, and a #{gender}"
end

#LAMBDAS part 2

word = lambda do |s|
  if s == "apple"
    p "dirt apple eater"
  else
    p "amazing orange eater"
  end
end

word.call()

#singel line lambda uses {} instead of do...end
simple_add = lambda {|num| num + 5}
simple_add(5)


def block_add(num1, num2) # variables
  yield(num1, num2) #yield is where the passed in function works
end

block_add(4,5) {|num1, num2| num1 + num2} #passed in function '


#modules
#modules are groups of methods that can be added into other classes


module Fruit_wash
  def washing(fruit)
    p "#{fruit} was washed"
  end
end



class Fruit_Prep
  include Fruit_wash
end

Fruit_Prep.new.washing("apple")
