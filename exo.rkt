#lang racket

(define x (read))
(define y (read))

(display "initial")
(newline)
(printf "x=~a y=~a" x y)
(newline)

(set! x (- x y))
(set! y  (+ x y))
(set! x  (- y x))
(display "valeur changer")
(newline)
(printf "x=~a y=~a" x y)

