# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    return true if nums.size != nums.uniq.size
    false
end