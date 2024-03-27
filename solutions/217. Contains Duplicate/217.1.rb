# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    h = {}
    nums.each do |n|
        if h[n].nil?
            h[n] = 1
            next            
        end
        return true
    end
    false
end