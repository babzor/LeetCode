# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    return nums[0] if nums.size == 1 
    max_average = -1 * Float::INFINITY
    total_nums = 0
    nums.each_with_index do |num, i|
        if i >= k
            max_average = [max_average, total_nums/k.to_f].max
            total_nums -= nums[i-k]
        end
        total_nums += nums[i]
    end
    [max_average, total_nums/k.to_f].max
end