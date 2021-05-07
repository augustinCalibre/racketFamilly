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
      
      ;(define tata #t)(display tata))
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
    [(string=? x "toto")(display "mankou")]
      [(string=? x "ali")(display "toto")]
      [(string=? x "yao")(display "ali")]
      [(string=? x "manu")(display "ali")]
      [(string=? x "fatou")(display "ali")]
      [(string=? x "froto")(display "mankou")]
      [(string=? x "pépé")(display "froto")]
      [else "pas de papa"])
    
  )
  

  (define/public (ancetre x )
    (display "*les ancetres de  ")(display x) (display " :      ** ") (newline)
    (cond 
    [(string=? x "adjoua")(display "fitini,titi,toto,mankou,mamie")];a continuer avec mami 
    [(string=? x "yao")(display "ali,toto,tata,mankou,mamie")]
    [(string=? x "manu")(display "ali,toto,tata,mankou,mamie")]
    [(string=? x "fatou")(display "ali,toto,tata,mankou,mamie")]
    [(string=? x "ali")(display "toto,tata,mankou,mamie")]
    [(string=? x "toto")(display "*mankou,mamie                      **")]
    [(string=? x "mankou")(display "mamie")]
    [else "pas d'ancetre"])
    
  )

  (define/public (petitEnfants x )
    (cond 
    [(string=? x "mamie")(display "mankou, toto, froto, manu, ali, pépé ,titi, fitini, adjoua,mamie et fatou  ")]
      
      [else "pas de petits enfants"])
    
  )

  (define/public (petitFils x )
    (cond 
    [(string=? x "mamie")(display "mankou, toto, froto, manu, ali, pépé")]
      
      [else "pas de petits enfants"]
))


;;; TO-DO 1

(define/public (frere x )
    (cond 
    [(string=? x "fatou")(display "yao, manu")]
      
      [else "pas de petits enfants"]
))

(define/public (neuveu x )

    (cond 
    [(string=? x "toto")(display "pepe")]
    [(string=? x "ali")(display "fitini")]
      
      [else "pas de petits enfants"]
))

(define/public (cousin)
    (display "fininiAdjoua manu fatou ")
))
)


  
      

  



(display "**************************************")(newline)
;(send  (new Femme%) tata)

;(send (new Famille%) neuveu(send (new Homme%) toto "?")(send (new Homme%) toto "?"))
;(send (new Homme%) toto "?")
;(send (new Femme%) tata "?")


(send (new ArbreGenealogique%) ancetre (read))(newline)

(display "**************************************")(newline)














