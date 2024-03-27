# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h = {}
    nums.each_with_index do |value, i|
        n = target - value
        if h[n]  
            return [h[n], i]
        else
            h[value] = i
        end
    end
end