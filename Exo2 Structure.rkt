#lang racket
(printf "bienvenue sur ma calculatrice")
(newline)
(printf "1-Addition 2-Soustration 3-multiplication 4-Division")
(printf "Faite Votre choix")
(newline)
(define a 0)
(define b 0)
(define res 0)
(define choix (read))



(cond (= choix 1)((begin(write "Addition") (set! a (read))(set! b (read)) (set! res (+ a b)) (write res) )))