class Bar
  attr_accessor :name, :age, :city
  
  def initialize( args = {} )
    @name = args[:name]
    @age  = args[:age]
    @city = args[:city]
  end
end
