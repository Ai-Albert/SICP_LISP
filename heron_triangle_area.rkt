#lang racket
(define (triangle-area a b c)
  (define (semi-perimeter a b c)
    (/ (+ a b c) 2))
  (define s (semi-perimeter a b c))
  (define a2 (* s
                (- s a)
                (- s b)
                (- s c)))
  (sqrt a2))