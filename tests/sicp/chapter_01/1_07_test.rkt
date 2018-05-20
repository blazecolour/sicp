#lang racket/base

(require rackunit "../../../src/sicp/chapter_01/1_07.rkt")

(check-equal? (sqrt 9) 3.000000001396984)
(check-equal? (sqrt (+ 100 37)) 11.704699917758145)
(check-equal? (sqrt (+ (sqrt 2) (sqrt 3))) 1.7737712336472033)
