class Solution:
    def countGoodSubstrings(self, s: str) -> int:
        window = []
        count = 0
        k = 3

        for i in range(len(s)):
            if i >= k:
                if len(set(window)) == k:
                    count +=1
                window.pop(0)
            window.append(s[i])
        if len(set(window)) == k:
                    count +=1
        return count
            

