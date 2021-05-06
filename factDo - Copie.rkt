#lang racket
(display "Programme FACT")
(newline)

(define n 1)
(define fact 1)

(do ((i 1))
(( = i 0))
(display "Entrer n")
(newline)
 (set! n (read))


(for*([i(in-range 1 (+ n 1) )])
  (set! fact (* fact i))
 )
(printf "~a! = ~a\n" n fact)

   (newline)
  (display "voulez continuer")
  (newline)
  
   (set! i (read))
   
    
 )
   
   

 
