# Given a string representing a matrix of numbers, return the rows and columns of that matrix.
# So given a string with embedded newlines like:

# 9 8 7
# 5 3 2
# 6 6 7

# your code should be able to spit out:

#    A list of the rows, reading each row left-to-right while moving top-to-bottom across the rows,
#    A list of the columns, reading each column top-to-bottom while moving from left-to-right.

matrix_str = <<~EOS
9 8 7
5 3 2
6 6 7
EOS

matrix = matrix_str.split("\n").map {|r| r.split(" ") }

puts matrix.inspect
puts "\nThese are rows :\n"

matrix.each do |r|
  r.each{|e|
    print e
    print ", " unless e == r.last
  }
  puts
end

puts "\nThese are columns:\n"

col = 0

while col < matrix.first.size do
  matrix.each do |r|
    print r[col]
    print ", " 
  end
  puts
  
  col +=1
end
