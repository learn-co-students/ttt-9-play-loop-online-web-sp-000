## Helper Methods
def turn(board)
  #asking the user for their input
  puts "Please enter 1-9:"
  #the gets method actually *gets* the user input
  input = gets
  #puts ">" + input + "<"
  #now calling the input_to_index method to convert the input to an integer and to the proper ruby index equivalent
  
  #defining index outside of a method so it is global and can be used throughout. Need to assign the **RESULT/OUTPUT** of the call of the #input_to_index method to index.
  index = input_to_index(input)
  
  #puts "xx #{index} xx"
  
  #calling the move index
  move(board, index)
  
  
  #now we need to validate the user's move
  valid_move?(board, index)
  
end

#Define display_board that accepts a board and prints
# out the current state.
def display_board(board = [" "," "," "," "," "," "," "," "," "])
  row_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  dashes = "-----------"
  row_two = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_three = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts row_one
  puts dashes
  puts row_two
  puts dashes
  puts row_three
end


#defining the input_to_index method
def input_to_index(input)
  #debug puts ">>" + input + "<<"
  x = input.to_i - 1
  #debug puts ">> #{x} <<"
  #debug x
  #a function returns the value of the last line of the code executed
end

##the return value of a method/function is the last thing executed, the last value

#move method
def move(board, index, character = "X")
  board[index] = character
end


#valid_move? method 
def valid_move?(board, index)
  #this first if statement is checking if the index is on the board and if the position has been taken
  if index.between?(0,8) && position_taken?(board, index) == false
    p true
  elsif index > 9 || index < 0
    p false
  elsif position_taken?(board, index) == true
    p false
  end
end


# defining #position_taken? method so that it can be used in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    p false
    elsif board[index] == nil
      p false
    elsif board[index] == "X" || board[index] == "O"
      p true
  end
end


#DEFINE PLAY METHOD BELOW...
def play(board)
  count = 0
  while count <= 9
    turn(board)
    count += 1
  end
end