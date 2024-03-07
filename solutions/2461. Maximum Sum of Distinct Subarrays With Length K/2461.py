from collections import Counter

class Solution:
    def maximumSubarraySum(self, nums: List[int], k: int) -> int:
        sum_nums = 0
        max_sum = 0
        counter = Counter()
        for i in range(len(nums)):
            if i >= k:
                if len(counter) == k:
                    max_sum = max(max_sum, sum_nums) 
                sum_nums -= nums[i-k]
                counter[nums[i-k]] -= 1
                if counter[nums[i-k]] == 0:
                    del counter[nums[i-k]]
            sum_nums += nums[i]
            counter[nums[i]] = 1 if nums[i] not in counter else counter[nums[i]]+1
        
        if len(counter) == k:
            max_sum = max(max_sum, sum_nums) 
        return max_sum