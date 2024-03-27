class Solution(object):
    def groupAnagrams(self, strs):
        """
        :type strs: List[str]
        :rtype: List[List[str]]
        """
        h = {}
        for s in strs:
            sorted_s = ''.join(sorted(s))
            if sorted_s in h:
                h[sorted_s].append(s)
            else:
                h[sorted_s] = [s]
        return h.values()