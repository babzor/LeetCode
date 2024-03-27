# Solution n°1 : brute force style

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    h = Hash.new
    queue = []

    nums.each do |n|
       h[n] ? h[n] += 1 : h[n] = 1
    end
    
    k.times do |i|
       queue << h.key(h.values.max)
       h.delete(queue[i])
    end
end


# Solution n°2 : more ruby-ish style

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    h = nums.tally
    queue = h.keys.sort_by { |key| h[key] }.reverse
    queue.first(k)
end