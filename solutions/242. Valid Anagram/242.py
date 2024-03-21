# STATS
# runtime = 51 ms
# memory = 16.9 MB
# Time complexity: O(n)
# Space complexity: O(n)
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        h1, h2 = {}, {}
    
        if len(s) != len(t):
            return False
        
        for i in range(len(s)):
            h1[s[i]] = 1 if s[i] not in h1 else h1[s[i]]+1
            h2[t[i]] = 1 if t[i] not in h2 else h2[t[i]]+1

        return True if h1 == h2 else False