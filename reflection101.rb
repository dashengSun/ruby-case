class Person
  attr_accessor :name, :age
end

p = Person.new
p.name='kaichao'
p.age=10
puts p.instance_variables
