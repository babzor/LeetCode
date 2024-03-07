class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        gap = len(needle)
        if needle not in haystack:
            return -1 
        else :
            for i in range(len(haystack)):
                if haystack[i:i+gap] == needle: return i 