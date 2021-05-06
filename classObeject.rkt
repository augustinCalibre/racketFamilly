#lang racket

;******************* :AUGUSTIN GRAH*********************
;*******************git:augustCalibre*******************

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
    
      (define/public (toto x)(eqv? x "?" ))
   ))


(define Famille%
  (class object%
    (super-new)
  
    (define/public (parent x y)
            (eqv? x y))


  (define/public (enfants x y)
            (eqv? x y))

  (define/public (pere x y)
            (eqv? x y))


  (define/public (mere x y)
            (eqv? x y))

   (define/public (ancetre x y)
            (eqv? x y))
  
   (define/public (grandParents x y)
            (eqv? x y))

   (define/public (frere x y)
            (eqv? x y))

   (define/public (soeur x y)
            (eqv? x y))

  (define/public (fils x y)
            (eqv? x y))


  (define/public (fille x y)
            (eqv? x y))

  (define/public (cousin x y)
            (eqv? x y))


  (define/public (neuveu x y)
            (eqv? x y))
            
  )
)


;;construction de l'Arbre

(define ArbreGenealogique%
(class object%
(super-new)

  (define/public (pere x )
    (cond 
    [(eq? x "toto")(write "mankou")]
      [(eq? x "ali")(write "toto")]
      [(eq? x "yao")(write "ali")]
      [(eq? x "manu")(write "ali")]
      [(eq? x "fatou")(write "ali")]
      [(eq? x "froto")(write "mankou")]
      [(eq? x "pépé")(write "froto")]
      [else "pas de papa"])
    
  )
  

  (define/public (ancetre x )
    (cond 
    [(eq? x "adjoua")(write "fitini,titi,toto,mankou,mamie")];a continuer avec mami 
    [(eq? x "yao")(write "ali,toto,tata,mankou,mamie")]
    [(eq? x "manu")(write "ali,toto,tata,mankou,mamie")]
    [(eq? x "fatou")(write "ali,toto,tata,mankou,mamie")]
    [(eq? x "ali")(write "toto,tata,mankou,mamie")]
    [(eq? x "toto")(write "mankou,mamie")]
    [(eq? x "mankou")(write "mamie")]
    [else "pas d'ancetre"])
    
  )

))
  
      

  



(write "**************************************")(newline)
;(send  (new Femme%) tata)

;(send (new Famille%) neuveu(send (new Homme%) toto "?")(send (new Homme%) toto "?"))
;(send (new Homme%) toto "?")
;(send (new Femme%) tata "?")


(send (new ArbreGenealogique%) ancetre "ali")














