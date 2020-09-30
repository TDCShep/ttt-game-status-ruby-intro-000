# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
# 8 Possible win combinations
# 3 element array for each win combo.
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Diagonal Left to Right
  [2,4,6] # Diagonal Right to Left
    ]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    position_taken?(board, win_combination) == board(win_combination)

     end
end
