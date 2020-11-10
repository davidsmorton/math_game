class UserInput
  attr_accessor :input 

  def initialize()
    @input = gets.chomp
    if @input =~ /[^0-9]/
      puts "Invalid input."
    end
  puts "Your answer is #{@input}"
  
  end
end