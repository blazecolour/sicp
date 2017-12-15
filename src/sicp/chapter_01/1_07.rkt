#lang racket

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (better-good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))

(define (better-sqrt-iter guess prev-guess x)
  (if (better-good-enough? guess prev-guess)
      guess
      (better-sqrt-iter (improve guess x)
                 guess
                 x)))

(define (sqrt x)
  (better-sqrt-iter 1.0 0.5 x))