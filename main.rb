def stock_picker(stocks) 
    p stocks.min
    while stocks.find_index(stocks.min) == stocks.length-1 do
        stocks.pop
    end

    if stocks.empty?
        return "No good day to buy"
    end

    min_i = stocks.find_index(stocks.min)

    max = 0 
    max_i = 0

    for i in min_i...stocks.length do
        if stocks[i] > max
            max_i = i
            max = stocks[i]
        end    
    end
    return [min_i, max_i]
end

p stock_picker([7,6,5,4,3,2,1])