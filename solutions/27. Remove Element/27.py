class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        # nums = [ num for num in nums if num != val ]
        i = 0
        for num in nums:
            if num != val:
                nums[i] = num
                i +=1
        return i