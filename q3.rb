class Horse 
  attr_accessor :age, :breed

  def inititalize(age, breed) 
    @age = age 
    @breed = breed 
  end 

  def output_horse 
    puts "#{self.age} year old #{self.breed}"
  end 

  def self.random_horse
    Horse.new(rand(10), :Thoroughbred)
  end 
end 

horse = Horse.random_horse
horse.output_horse