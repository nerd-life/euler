#lang Scheme

(define (sum_even_fibs prev curr next)
  (if (<= curr 4000000) 
             (+ 
              (if (= (remainder curr 2) 0) curr 0)
              (sum_even_fibs curr next (+ curr next))
              )
         0)
  )

(sum_even_fibs 0 1 1)