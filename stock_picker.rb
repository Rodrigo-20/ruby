def stock_picker (day_prices)
    prices=[]
    profit=0
    day_prices.each_with_index do |price_buy,index_buy|
        day_prices.each_with_index do |price_sell,index_sell|
            if price_sell-price_buy > profit and index_buy <index_sell
                profit=price_sell-price_buy
                prices[0]=price_buy
                prices[1]=price_sell
            end    
        end
    end    
    prices
end    
stock_picker([17,3,6,9,15,8,6,1,10])