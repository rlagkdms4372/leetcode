class Solution:
    def isValid(self, s: str) -> bool:
        paren_stack = []
        for paren in s:
            if paren == "(" or paren == "{" or paren == "[":
                paren_stack.append(paren)
            else:
                if paren_stack:
                    curr = paren_stack.pop()
                    if curr == "(" and paren == ")":
                        continue
                    elif curr == "{" and paren == "}":
                        continue
                    elif curr == "[" and paren == "]":
                        continue
                    else:
                        return False
                else:
                    return False
        if paren_stack:
            return False
        else:
            return True
    
        