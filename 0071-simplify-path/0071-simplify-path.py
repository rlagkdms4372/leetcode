from collections import deque
class Solution:
    def simplifyPath(self, path: str) -> str:

        queue = deque()
        result = ""
        path = path.split(sep = "/")

        for letter in path:
            if len(result) == 0:
                result += "/"
            else:
                if letter == "." or letter == "":
                    continue
                elif letter == "..":
                    if queue:
                        queue.pop()
                else:
                    queue.append(letter)
        while queue:
            inputt = queue.popleft()
            result += inputt
            result += '/'
        if len(result) == 1:
            return result
        else:
            return result[:-1]