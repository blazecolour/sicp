#lang racket

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-max a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        (else (sum-of-squares a b))))