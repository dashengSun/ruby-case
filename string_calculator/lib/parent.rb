class Parent
  @things = []
  def self.things
    @things
  end
  def things
    self.class.things
  end
end

class Child < Parent
  @things = []
end

Parent.things << :car
Child.things  << :doll
mom = Parent.new
dad = Parent.new

p Parent.things #=> [:car]
p Child.things  #=> [:doll]
p mom.things    #=> [:car]
p dad.things    #=> [:car]