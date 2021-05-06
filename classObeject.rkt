#lang racket

;;;;;AUTHOR :AUGUSTIN GRAH

(define BC '(
             Homme(toto)
                  femme(tata)
                  monocotyledone (phanérogame 1-cotyledone)
                  ))

(class object%
  (super-new)
  (field [minestrone 'ready]
         [(internal-coq-au-vin coq-au-vin) 'stewing]))





(define Femme%
  (class object%
     (super-new)
      ;(define tru #t)(define false #f)
    
      (define/public (tata x)(eqv? x "?" )))
      
      ;(define tata #t)(write tata))
  )

(define Homme%
  (class object%
     (super-new)
    
      ;(define tru #t)(define false #f)
    
      (define/public (toto x)(eqv? x "?" )))
   )


(define Famille%
  (class object%
    (super-new)
  
    (define/public (parent x y)
            (eqv? x y))))


  (define/public (parent x y)
            (eqv? x y)
)


(write "**************************************")(newline)
;(send  (new Femme%) tata)

(send (new Famille%) parent (send (new Homme%) toto "?")(send (new Homme%) toto "?"))
;(send (new Homme%) toto "?")
;(send (new Femme%) tata "?")













