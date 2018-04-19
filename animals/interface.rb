require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'



simba = Lion.new("Simba")
timon = Meerkat.new("Timon")
pumba = Warthog.new("Pumba")

animals = []

animals << simba
animals << timon
animals << pumba

animals.each do |animal|
  puts animal.talk
end
