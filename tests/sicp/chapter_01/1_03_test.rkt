#lang racket/base

(require rackunit "../../../src/sicp/chapter_01/1_03.rkt")

(check-equal? (sum-of-squares-max 2 3 2) 13)
(check-equal? (sum-of-squares-max 3 5 6) 61)
(check-equal? (sum-of-squares-max 5 8 3) 89)
