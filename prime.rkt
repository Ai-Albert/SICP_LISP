#lang racket

; O(sqrt(n)) bc only need to iterably check 2 to floor(sqrt n)
; since there is guaranteed to be a divisor in that range if
; n is not a prime #

(define (prime? n)
  (define (smallest-divisor n)
    (find-divisor n 2))
  (define (find-divisor n test)
    (cond ((> (square test) n) n)
          ((divides? test n) test)
          (else (find-divisor n (+ test 1)))))
  (define (square n)
    {* n n})
  (define (divides? a b)
    (= (remainder b a) 0))
  
  (= n (smallest-divisor n))
)