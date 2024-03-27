class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        h = {}
        for i in range(len(nums)):
            n = target - nums[i]
            if n in h:
                return [h[n], i]
            else:
                h[nums[i]] = i