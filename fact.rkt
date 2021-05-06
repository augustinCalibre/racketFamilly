#lang racket
(write "Programme factoriel" )
(newline)(display "entrer le nombre:")(newline)
(define n (read)) ;;gggg
(define fact 1)
(if (<= n 0) (display "Nombre non valide")
 (begin

(for*([i(in-range 1 (+ n 1) )])
  (set! fact (* fact i))
 )

(printf "~a! = ~a\n" n fact)

 ))
