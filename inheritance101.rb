class Animal
  def method1
    puts "in animal"
  end
  def method2
    "Animal-method2"
  end
end

class Dog < Animal


  def method2
    puts "Dog-method2" + super
  end
end

class String
  def length
    20
  end
end

myobject = Animal.new
myDog = Dog.new
myDog.method1
myDog.method2

myobject.method1
myobject.method2
puts "a".length

puts myDog.methods.join('::')
