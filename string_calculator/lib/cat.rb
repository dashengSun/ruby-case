class Cat
  # attr_accessor @@food
  @@food = 'fish'
  def self.eat
    require 'pry'
    binding.pry
    puts @@food
  end

end

class Dog
  @@name = "dahuang"
  def self.name
    Cat.food = "chicken"
    puts @@name
  end
end

Cat.eat
