class Foo

  @@ssoo = 99

  def self.bar
    puts 'class method'
    puts @@ssoo
  end

  def baz
    puts 'instance method'
  end

  def test
    if nil
      puts "nil"
    else
      puts 'not nil'
    end
  end
end

# Foo.bar
# Foo.baz

# Foo.new.bar
# Foo.new.baz

# Foo.new.test

puts Foo.class_variable_get(:@@ssoo)
Foo.bar