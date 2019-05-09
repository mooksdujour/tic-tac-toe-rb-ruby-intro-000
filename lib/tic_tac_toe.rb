#Win combinations in tic tac toe
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

#Empty board
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, token)
  board[index] = token
end

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    return true
  end
  false
end

def valid_move?(board, position)
  if position.between?(0, 9) && !position_taken?(board, position)
    return true
  end
  false
end

def turn(board)
  #puts "Please enter X or O"
  #token = gets.strip.upcase
  puts "Please enter a number between 1 and 9"
  user_input = gets.strip
  position = input_to_index(user_input)
  if valid_move?(board, position)
    move(board, position, "O")
    display_board(board)
  else
    turn
  end
end
