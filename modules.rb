require 'pry'

class Person
  attr_reader :name

  def initialize(name)
    puts "I am a top level person"
    @name = name
  end
end

module Shuttestock
TYPE = 'whatever'
  class Person
    attr_reader :name

    def initialize(name)
      puts "I am a Shutterstock::Person"
      @name = name
    end
  end
end

binding.pry
