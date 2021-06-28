#lang racket

; Euclid's algorithm for GCD of a pair of nums

; based on the fact that if r is the remainer of a/b then
; common divisors of a and b are the same as those of b and r

; Lame's theorem says that if this algo takes k steps, then the
; smaller # in the pair must be >= kth Fibnacci #

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))
  )
)