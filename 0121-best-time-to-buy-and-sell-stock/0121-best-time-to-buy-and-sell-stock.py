class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        min_price = float('inf')
        answer = 0
        for price in prices:
            if price < min_price:
                min_price = price
            else:
                if (price - min_price) > answer:
                    answer = (price - min_price)

        return answer       



        