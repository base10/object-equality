# Ruby and object comparison


## First level: I want to compare two objects



## Second level: I want to compare two objects at a definable level of depth

- Redefining == will allow for specifying the level of depth
    - http://www.skorks.com/2009/09/ruby-equality-and-object-comparison/
    - http://stackoverflow.com/questions/3941074/comparing-objects-in-ruby
    
As a quick exercise, I put together a couple of small classes, one of which has a == method defined to specify how to test for equality.

There's also a Comparable mixin available, which involves defining a <=> method (similar to how you'd define one in Perl with a sort operation) that also provides ==, >, <, >=, <=. But, I didn't go down that road since it doesn't seem to be what's necessary here. If it is, check out the following: http://www.ruby-doc.org/docs/ProgrammingRuby/html/tut_modules.html

See the "shallow" folder for an example. Use run.rb to see how it evaluates
