#lang racket/base

(require rackunit "../../../src/sicp/chapter_01/1_04.rkt")

(check-equal? (a-plus-abs-b 2 3) 5)
(check-equal? (a-plus-abs-b 4 -3) 7)
(check-equal? (a-plus-abs-b -3 0) -3)
(check-equal? (a-plus-abs-b -3 4) 1)
