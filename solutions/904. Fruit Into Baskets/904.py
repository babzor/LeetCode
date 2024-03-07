class Solution:
    def totalFruit(self, fruits: List[int]) -> int:
        fruits_dict={}
        max_fruits=0
        start_index=0
        for i in range(len(fruits)):
            fruits_dict[fruits[i]] = 1 if fruits[i] not in fruits_dict else (fruits_dict[fruits[i]]+1)
            while len(fruits_dict) > 2:
                fruits_dict[fruits[start_index]] -= 1
                if fruits_dict[fruits[start_index]] == 0:
                    fruits_dict.pop(fruits[start_index])
                start_index += 1
            max_fruits = max(max_fruits, i- (start_index-1))
        return max_fruits