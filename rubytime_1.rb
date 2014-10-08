class Person
  attr_accessor :name
  #attr_writer :name
  #attr_reader :name


  def initialize(name)
    puts "TEXT #{ name }"
    @name = name
    @@count ||= 0 #initialize varible to the Person class
    @@count += 1
  end

  def thing
    self
    puts "I initialized with #{ self.name }"
  end

  def self.thing
    "word"
  end
end
p = Person.new("vlad")
puts p.name
puts p.thing
puts Person.thing




#binding.pry #drop me into pry at that spot
#public methods
