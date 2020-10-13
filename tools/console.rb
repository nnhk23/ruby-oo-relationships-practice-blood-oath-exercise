require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Cult.new("A", "B", 2020, "ABC")
c2 = Cult.new("A2", "B2", 2020, "ABC2")
c3 = Cult.new("A3", "B3", 2020, "ABC3")

f1 = Follower.new("Kim", 25, "Happy coding")
f2 = Follower.new("Alex", 30, "Happy coding")
f3 = Follower.new("A", 21, "Happy coding")

o1 = BloodOath.new(c1, f1, '2020-10-13')
f1.join_cult(c1)
f2.join_cult(c1)
f2.join_cult(c2)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits