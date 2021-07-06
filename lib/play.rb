index = 0 

#displays the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts the input to index
def input_to_index(user_input = 0)
  index = (user_input.to_i - 1)
end

#marks X or O based on user's input
def move(board, index, character = "X")
  if character == "X"
    board[index] = "X"
  else character == "O"
    board[index] = "O"
end
end

#helper method to see if it is open
def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  else
    false
  end
end

#validates code to check that it is a valid move
def valid_move?(board, index)
  if (index.between?(0,8) == true) && (position_taken?(board, index) == false)
    return true 
  else
    return false
  end
end

#combines helper methods to take a turn
def turn(board)
  character = "X"
puts "Please enter 1-9:"
user_input = gets.strip
user_input = user_input.to_i
index = input_to_index(user_input)
 if valid_move?(board, index) == true
   move(board, index, character = "X")
   display_board(board)
  else 
    turn(board)
  end
end

#the meat!
def play(board)
 i = 0
 while i < 9
 i += 1
  turn(board)
  end
  puts "Game over! Thanks for playing."
end
    