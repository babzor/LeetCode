# STATS
# runtime = 46 ms
# memory = 17.3 MB
# Time complexity: O(n log n)
# Sorting a string of length n has a time complexity of O(n log n)
# Space complexity: O(n)
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        return True if ''.join(sorted(s)) == ''.join(sorted(t)) else False
        