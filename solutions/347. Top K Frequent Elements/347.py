from collections import Counter
from typing import List

class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        counter = Counter(nums)
        top_k = counter.most_common(k)
        top_k_elements = [item[0] for item in top_k]
        return top_k_elements
