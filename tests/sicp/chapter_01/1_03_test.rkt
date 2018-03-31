#lang racket/base

(require rackunit "../../../src/sicp/chapter_01/1_03.rkt")

(check-equal? (sum-of-squares-max 2 3 3) 18)
(check-equal? (sum-of-squares-max 3 4 4) 32)
(check-equal? (sum-of-squares-max 3 7 4) 65)
