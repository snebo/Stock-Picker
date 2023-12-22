def pick_best_stock(stk)
  buy  = stk[0]
  sell = stk[stk.length - 1]

  stk.each_with_index do |value, i|
    value < buy && stk.index(sell) > i ? buy = value : nil
    value > sell && stk.index(buy) < i ? sell = value : nil
  end
  return "Buy = $#{buy} and sell = $#{sell} for a profit of $#{sell - buy}"
end

pick_best_stock([17, 3, 6, 9, 15, 8, 6, 1, 10])
