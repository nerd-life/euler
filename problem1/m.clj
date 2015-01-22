(reduce + (filter (fn [x] (or (== (mod x 3) 0) (== (mod x 5) 0))) (range 10)))

(->>
  (range 1000)
  (filter (fn [x] (or (== (mod x 3) 0) (== (mod x 5) 0))))
  (reduce +))
