def validSolution(board)

  board.each do |row|
      return false unless row.uniq == row
    end

  j = 0
  9.times do
    i = 0
    vertical = Array.new
    9.times do
      vertical << board[i][j]
      i += 1
    end
    return false unless vertical.uniq == vertical
    j += 1
  end

  i = 0
  j = 0
  box_row = 0
  box_col = 0
  3.times do
     3.times do
       box = Array.new
       3.times do
         i = box_row
         3.times do
           box << board[i][j]
           i += 1
         end
         j += 1
       end
       return false unless box.uniq == box
       box_row += 3
       j = box_col
     end
     box_row = 0
     box_col += 3
  end
  true
end