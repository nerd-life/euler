#lang Scheme

(define (divides number divisor)
  (= (remainder number divisor) 0)
  )
      
(define (findLargestPrimeFactor number factor)
  (cond
    ((= number factor) factor)
    ((divides number factor) (findLargestPrimeFactor (/ number factor) factor))
    (else (findLargestPrimeFactor number (+ factor 1)))
    )
  )

(findLargestPrimeFactor 600851475143 2)