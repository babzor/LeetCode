# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
    uniq_nums = Set.new(nums)

    return 0 if nums.empty?

    max_lenght = 0
    current_num = 0

    uniq_nums.each do |num|
        if !uniq_nums.include?(num - 1)
            current_lenght = 1
            current_num = num

            while uniq_nums.include?(current_num + 1)
                current_lenght += 1
                current_num += 1
            end

            max_lenght = [max_lenght, current_lenght].max
        end
    end

    return max_lenght
end