require 'bundler/setup'
require 'pry'

a = [ 1, 2, 3 ]
a.each do |i|
  i + 1
end
a.map { |i| i * 5 }

a.find { |i| puts "checking #{i}"; i % 2 == 0 }

def debugger ( value, &block )
  value.each do |v|
    yield v
  end
end

def talker ( person, text, &block )
  yield person, text
end

talker("vlad", "hello") do |p, t|
  puts "the person is #{p}"
  puts "the text is #{t}"
end

#http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/
# look at ruby enumerable
# read above

binding.pry
