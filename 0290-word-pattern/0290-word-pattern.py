class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        word = set()
        pat_dict = {}
        pat_arr = s.strip().split()
        if len(pat_arr) != len(pattern):
            return False
        for i in range(len(pattern)):
            if pattern[i] not in pat_dict:
                if pat_arr[i] in word:
                    return False
                else:
                    pat_dict[pattern[i]] = pat_arr[i]
                    word.add(pat_arr[i])
            else:
                if pat_dict[pattern[i]] != pat_arr[i]:
                    return False
        return True
            
        