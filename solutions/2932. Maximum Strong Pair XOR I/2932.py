class Solution:
    def maximumStrongPairXor(self, nums: List[int]) -> int:
        max_xor = 0
        for i in range(len(nums)):
            b=i
            while b < len(nums):
                if abs(nums[i]-nums[b]) <= min(nums[i], nums[b]):
                    max_xor = max(max_xor, nums[i]^nums[b])
                b += 1
        return max_xor