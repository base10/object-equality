# Ruby and object comparison

*This is a small, static project I am using to help a team at work with evaluating Ruby objects for equivalence.*

Redefining <code>==</code> for a Ruby class will allow for specifying the level of depth

As a quick exercise, I put together a couple of small classes, one of which has a [<code>==</code> method defined to specify how to test for equality][equal].

There's also a [Comparable mixin available][comparable], which involves defining a <=> method (similar to how you'd define one in Perl with a sort operation) that also provides <code>==</code>, >, <, >=, <=. But, I didn't go down that road since it doesn't seem to be what's necessary here. If it is, check out the following: 

See the "shallow" folder for an example of comparing flat objects. Use run.rb to see how it evaluates a simple case.

See the "deep" folder for an example of comparing an object that contains another object.

[equal]: http://www.skorks.com/2009/09/ruby-equality-and-object-comparison
[comparable]: http://www.ruby-doc.org/docs/ProgrammingRuby/html/tut_modules.html
