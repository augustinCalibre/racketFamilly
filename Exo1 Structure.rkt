#lang racket
(define x (read))
(define y (read))
(define z 0)
(if (< x y)(set! z y) (set! z x))
(define t (read))
(if (< t z)(write z) (write t))





