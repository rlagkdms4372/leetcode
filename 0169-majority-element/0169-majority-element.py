import heapq

class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        max_dict = {}

        for num in nums:
            max_dict[num] = max_dict.get(num, 0) + 1
        max_dict = sorted(max_dict.items(), reverse = True, key = lambda x: x[1])
        return max_dict[0][0]