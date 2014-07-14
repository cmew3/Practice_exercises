class Orange_tree
  def initialize name
    @name = name
    @age = 0
    @height = 0
    @alive = true
    @number_of_oranges = 0
    
    puts "You have planted a new #{@name} orange tree"
  end
  
  def count
    if @alive
      puts "There are #{@number_of_oranges} oranges on your tree"
    else 
      puts "Sorry there are no oranges on a dead tree"
    end
  end
  
  def pick
    if @alive
      if @number_of_oranges > 0
        puts "Mmmmm....this orange is delicious"
        @number_of_oranges = @number_of_oranges - 1
      else
        puts "Sorry there are no oranges to pick. You will have to wait until next year"
      end 
    else
      puts "Sorry you can't pick an orange from a dead tree"
    end
  end
   
  
  def measure
    puts "The tree is now #{@height}cm tall"
  end
  
  def one_year_passes
    if @age>15 && rand(2)==1
      puts "Oh no! Your orange tree did not survive the winter and has died"
      @alive = false
    end
    if @alive
      if @age>3
        @number_of_oranges = rand(@age**2)
      else
        @number_of_oranges = 0
      end
      @height = @height + 20
    end
  @age = @age + 1
  end


end

puts "What type of Orange tree would you like?"
type = gets.chomp
tree = Orange_tree.new type
while true
  puts "Would you like to MEASURE, COUNT or PICK from the tree. Or WAIT another year or END the program?"
  action = gets.chomp.downcase
  if action =='wait'
    tree.one_year_passes
  elsif action == 'pick'
    tree.pick
  elsif action == 'count'
    tree.count
  elsif action == 'measure'
    tree.measure
  elsif action == 'end'
    puts "OK see you again soon"
    break
  end
  puts
end

