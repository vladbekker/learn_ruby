class Person
attr_accessor :name, :age, :gender
end

person_instance = Person.new

person_instance.gender = "male"
person_instance.name = "Spike"
person_instance.age = 22

print "This person's age is ", person_instance.age
