#lang racket
;;Exercice 2 : Ecrire une S-Expression pour exécuter l’exercice 1 autant de fois que l’utilisateur le désire.

(display "Programme Factoriel")
(newline)
(define n 1)
(define fact 1)

(do ((  i "oui" ))
(( string=? "non" i))
  (set! fact 1)
 
(display "Entrer n")
(newline)
 (set! n (read))
(if (<= n 0) (display "Nombre non valide")
 (begin

(for*([i(in-range 1 (+ n 1) )])
  (set! fact (* fact i))
 )

(printf "~a! = ~a\n" n fact)

 ))


   (newline)
  (display "voulez continuer")
  (newline)
  
   (set! i (read))
   
    
 )
   
   

 
