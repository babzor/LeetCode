# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    h = { :rows => {}, :cols => {}}

    (0...board.size).each do |i|
        h[:rows][i] = []
        (0...board.size).each do |j|
            h[:cols][j] = [] if h[:cols][j].nil?
            val = board[i][j]

            if val != "."
                if h[:rows][i].include?(val) or h[:cols][j].include?(val)
                    return false
                else
                    h[:rows][i] << val
                    h[:cols][j] << val
                end
                # sub-box 1
                if (0..2).include?(i) and (0..2).include?(j)
                    if h[:subox1].nil?
                        h[:subox1] = [val] 
                    else
                        return false if h[:subox1].include?(val)
                        h[:subox1] << val
                    end
                # sub-box 2
                elsif (0..2).include?(i) and (3..5).include?(j)
                    if h[:subox2].nil?
                        h[:subox2] = [val] 
                    else
                        return false if h[:subox2].include?(val)
                        h[:subox2] << val
                    end
                # sub-box 3
                elsif (0..2).include?(i) and (6..8).include?(j)
                    if h[:subox3].nil?
                        h[:subox3] = [val] 
                    else
                        return false if h[:subox3].include?(val)
                        h[:subox3] << val
                    end
                # sub-box 4
                elsif (3..5).include?(i) and (0..2).include?(j)
                    p "hello"
                    if h[:subox4].nil?
                        h[:subox4] = [val] 
                    else
                        p "i=#{i} et j=#{j}"
                        p "val=#{val}, h=#{h[:subox4]}"
                        return false if h[:subox4].include?(val)
                        h[:subox4] << val
                    end
                # sub-box 5
                elsif (3..5).include?(i) and (3..5).include?(j)
                    if h[:subox5].nil?
                        h[:subox5] = [val] 
                    else
                        return false if h[:subox5].include?(val)
                        h[:subox5] << val
                    end
                # sub-box 6
                elsif (3..5).include?(i) and (6..8).include?(j)
                    if h[:subox6].nil?
                        h[:subox6] = [val] 
                    else
                        return false if h[:subox6].include?(val)
                        h[:subox6] << val
                    end
                # sub-box 7
                elsif (6..8).include?(i) and (0..2).include?(j)
                    if h[:subox7].nil?
                        h[:subox7] = [val] 
                    else
                        return false if h[:subox7].include?(val)
                        h[:subox7] << val
                    end
                # sub-box 8
                elsif (6..8).include?(i) and (3..5).include?(j)
                    if h[:subox8].nil?
                        h[:subox8] = [val] 
                    else
                        return false if h[:subox8].include?(val)
                        h[:subox8] << val
                    end
                # sub-box 9
                elsif (6..8).include?(i) and (6..8).include?(j)
                    if h[:subox9].nil?
                        h[:subox9] = [val] 
                    else
                        return false if h[:subox9].include?(val)
                        h[:subox9] << val
                    end
                end 
            end
        end
    end
    #h.each do |key, value|
    #    p "h[#{key}] = #{value}"
    #    value.each do |e|
    #        p e
    #    end
    #end
    p h[:subox1]
    p h[:subox2]
    p h[:subox3]
    p h[:subox4]
    p h[:subox5]
    p h[:subox6]
    p h[:subox7]
    p h[:subox8]
    p h[:subox9]
    p "the end"
    true
end




## Code sample with better performance (from Leetcode solutions)
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    board.each { |row| return false if contains_duplicate?(row) }
    board.transpose.each { |column| return false if contains_duplicate?(column) }
    board.each_slice(3) do |columns|
      sub_boxes = [[], [], []]
      columns.each do |column|
        sub_boxes[0] += column[0...3]
        sub_boxes[1] += column[3...6]
        sub_boxes[2] += column[6...9]
      end
      sub_boxes.each { |sub_box| return false if contains_duplicate?(sub_box) }
    end
  
    true
  end
  
  def contains_duplicate?(array)
    array_without_dots = array.reject { |elem| elem == '.' }
    array_without_dots.length != array_without_dots.uniq.length
  end