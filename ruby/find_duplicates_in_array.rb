# Given an array of n elements that contains elements from 0 to n-1, with any of these numbers appearing any number of times. Find these repeating numbers in O(n) and use only constant memory space.

# Note: The repeating element should be printed only once.

# Example: 

#     Input: n=7 , array[]={1, 2, 3, 6, 3, 6, 1}
#     Output: 1, 3, 6
#     Explanation: The numbers 1 , 3 and 6 appears more than once in the array.

#     Input : n = 5 and array[] = {1, 2, 3, 4 ,3}
#     Output: 3
#     Explanation: The number 3 appears more than once in the array.

require "minitest/autorun"

class FindDuplicates
  def self.run(list)
    count     = Hash.new(0)
    list.each{|n| count[n] +=1}
    count.keys.map{|k| k if count[k] > 1}.compact
  end
end

describe FindDuplicates do
  describe "#find duplicates" do
    it "in an array of numbers" do
      _(FindDuplicates.run([1, 2, 3, 6, 3, 6, 1])).must_equal([1, 3, 6])
      _(FindDuplicates.run([1, 2, 3, 4 ,3])).must_equal([3])
    end
  end
end



