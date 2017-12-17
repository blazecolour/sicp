#lang racket

(define (f n)
  (if (< n 3)
      n
  (+ (f (- n 1))
     (f (- n 2))
     (f (- n 3)))))

(define (f-it n)
  (define (f-iter a b c counter)
    (if (< n 3)
        n        
        (if (> counter n)
            a
            (f-iter (+ a b c) a b (+ counter 1)))))
  (f-iter 2 1 0 3))