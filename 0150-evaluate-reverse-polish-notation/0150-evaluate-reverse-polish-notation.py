class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
        stack = []

        for token in tokens:
            if token in ("+", "-", "*", "/"):
                if len(stack) >= 2:
                    n1 = stack.pop()
                    n2 = stack.pop()
                    if token == "+":
                        stack.append(n1 + n2)
                    elif token == "-":
                        stack.append(n2 - n1)
                    elif token == "*":
                        stack.append(n2 * n1)
                    else:
                        stack.append(int(n2/n1))
            else:
                stack.append(int(token))
        return stack[-1]
                
        