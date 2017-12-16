#lang racket

(define (square x) (* x x))

(define (cube x) (* (square x) x))

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

(define (cbrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (cbrt-iter (improve guess x)
                      guess
                      x)))

(define (cbrt x)
  (cbrt-iter 1.0 0.5 x))