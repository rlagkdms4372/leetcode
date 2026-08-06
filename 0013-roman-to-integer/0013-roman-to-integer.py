class Solution:
    def romanToInt(self, s: str) -> int:
        rom_dict = {"I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000}
        ans = 0
        i = 0
        while i < (len(s)-1):
            if s[i] == "I":
                if  s[i+1] == "V":
                    ans += 4
                    i += 2
                elif  s[i+1] == "X":
                    ans += 9
                    i += 2
                else:
                    ans += rom_dict[s[i]]
                    i += 1
            elif s[i] == "X":
                if  s[i+1] == "L":
                    ans += 40
                    i += 2
                elif  s[i+1] == "C":
                    ans += 90
                    i += 2
                else:
                    ans += rom_dict[s[i]]
                    i += 1
            elif s[i] == "C":
                if  s[i+1] == "D":
                    ans += 400
                    i += 2
                elif  s[i+1] == "M":
                    ans += 900
                    i += 2
                else:
                    ans += rom_dict[s[i]]
                    i += 1
            else:
                ans += rom_dict[s[i]]
                i += 1
        if i == (len(s)-1):
            ans += rom_dict[s[i]]
        return ans