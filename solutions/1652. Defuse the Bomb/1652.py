# STATS:
# Runtime = 42ms
# memory = 16.54mb
class Solution:
    def decrypt(self, code: List[int], k: int) -> List[int]:        
        n = len(code)
        arr = code*2
        decrypted_code = []

        for i in range(n):
            if k > 0:
                decrypted_code.append(sum(arr[i+1:i+k+1]))
            elif k < 0:
                decrypted_code.append(sum(arr[i+n-(-k):i+n]))
            else:
                decrypted_code = [0]*len(code)
        return decrypted_code


