import re

class Solution:
    def isPalindrome(self, s: str) -> bool:
        string_to_test = re.sub(r'[^a-zA-Z0-9]', '', s).lower()

        start = 0
        end = len(string_to_test) - 1
        while start < end:
            if string_to_test[start] != string_to_test[end]: return False
            else:
                start += 1
                end -= 1
        return True