#!/usr/bin/env ruby

require_relative 'foo'
require_relative 'bar'

require 'pp'

puts "Be sure to open this file in a text editor to follow along"

# First, let's set-up some values we'll use for our exercise
name_age = {
              name: 'Freddy',
              age:  26
            }

# And, let's set-up a comparison between two objects
def object_compare(obj1, obj2)
  klass = obj1.class

  if obj1 == obj2
    puts "#{klass} objects match"
  else
    puts "#{klass} objects don't match"
  end
end

# OK, let's begin
# Let's compare a couple simple objects
b1 = Bar.new( name_age )
b2 = Bar.new( name_age )

object_compare(b1, b2)

# Hrm. They don't match. Why is that? The object ids are different… Have a look.

pp b1
pp b2

# Instead, let's use the same values with a different Object

f1 = Foo.new( name_age )
f2 = Foo.new( name_age )

object_compare(f1, f2)

# Hey, wait, they aren't the same object!

pp f1
pp f2

# What's going on? Look at the == method in the foo.rb class. I only care about
# the age.
# We can do this a little differently, too

object_compare(f1, Foo.new(age: 26) )
object_compare(f1, Foo.new(age: 27) )

# The first matches, the second does not, but age is all we're looking at

# I don't even have to use the same object class for this, but my method
# assumes they are
object_compare(f1, b1)
