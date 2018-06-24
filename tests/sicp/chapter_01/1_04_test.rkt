#lang racket/base

(require rackunit "../../../src/sicp/chapter_01/1_04.rkt")

(check-equal? (a-plus-abs-b 3 5) 8)
(check-equal? (a-plus-abs-b 5 -5) 10)
(check-equal? (a-plus-abs-b -1 0) -1)
(check-equal? (a-plus-abs-b -7 2) -5)
