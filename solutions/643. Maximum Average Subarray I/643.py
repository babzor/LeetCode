class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        if len(nums) == 1: return nums[0]
        max_average = float('-inf')
        total_nums = 0
        for i in range(len(nums)):
            if i >= k:
                max_average = max(max_average, total_nums/k)
                total_nums -= nums[i-k]
            total_nums += nums[i]
        return max(max_average, total_nums/k)