#lang Scheme

(define (sumEvenFibs prev curr next)
  (if (> curr 4000000) 0
      (+ 
       (if (even? curr) curr 0)
       (sumEvenFibs curr next (+ curr next))
       )
      ) 
  )

(sumEvenFibs 0 1 1)