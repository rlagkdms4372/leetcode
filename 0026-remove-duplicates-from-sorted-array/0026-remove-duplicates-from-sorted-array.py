class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        count = 1
        curr = nums[0]
        i = 1
        while i < len(nums):
            if nums[i] == curr:
                nums.pop(i)
                continue
            else:
                count += 1
                curr = nums[i]
                i += 1
        return count
        