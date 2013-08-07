class Foo
  attr_accessor :name, :age, :city
  
  def initialize( args = {} )
    @name = args[:name]
    @age  = args[:age]
    @city = args[:city]
  end

  def ==(other)
    self.age == other.age
  end
end
