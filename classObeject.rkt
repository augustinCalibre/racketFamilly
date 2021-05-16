I#lang racket

;******************* :AUGUSTIN GRAH*********************
;*******************git:augustCalibre*******************

(class object%
  (super-new)
  (field [minestrone 'ready]
         [(internal-coq-au-vin coq-au-vin) 'stewing]))


;Initialisation  des hommes du projets 


 
(define Homme(list "mankou" "toto" "froto" "manu" "ali" "pépé" "yao"))

;Initialisation  des femmes du projets 

(define Femme(list "tata" "titi" "fitini" "adjoua" "mamie" "fatou"))  
     
  
;Fonction Homme
(define (homme x)
  (define rep #f)
  (for([i(in-list Homme)])
    (if(eq? x i)
       (set! rep #t)
       (set! rep rep)
       )
       )
  rep
  )

;Fonction Femme
(define (femme x)
  (define rep #f)
  (for([i(in-list Femme)])
    (if(eq? x i)
       (set! rep #t)
       (set! rep rep)
       )
    )
  rep
  )


(define my-parent

  '((parent-toto tata  )
  (parent-toto  vava  )

  (parent-toto  zozo  )
  (parent-toto  zaza  )
  
  )
)

(define (Parent  parent neuveu)
   (cond
   [(empty? parent)(display #f)(newline)]
   [(equal? neuveu (second (first parent)))]
   [else (Parent (rest parent) neuveu)]

  )
)

(Parent my-parent   'zaza )








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




;;construction de l'Arbre Généalogique  pour repondre à  la deuxième  partie du projet.

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
    [(string=? x "adjoua")(display "fitini,titi,toto,mankou,mamie")]
    [(string=? x "yao")(display "ali,toto,tata,mankou,mamie")]
    [(string=? x "manu")(display "ali,toto,tata,mankou,mamie")]
    [(string=? x "fatou")(display "ali,toto,tata,mankou,mamie")]
    [(string=? x "ali")(display "toto,tata,mankou,mamie")]
    [(string=? x "toto")(display "mankou,mamie"]                   **")]
    [(string=? x "mankou")(display "mamie")]
    [(string=? x "fitini")(display "titie ,toto,mankou,mamie")]
[(string=? x "titi")(display "toto ,mankou,mamie")]
[(string=? x "toto")(display "mankoue,mamie")]
[(string=? x "pepe")(display "froto,mankou,mami")]
[(string=? x "froto")(display "mankou,mamie")]
    [else "pas d'ancetre"])

  )

  (define/public (petitEnfants x )
    (cond 
    [(string=? x "mamie")(display "toto, froto, manu, ali, pépé ,titi, fitini, adjoua,mamie et fatou  ")]
      
      [else "pas de petits enfants"])
    
  )

;;; TODO  1

(define/public (frere x )
    (cond 
    [(string=? x "fatou")(display "yao, manu")]

      [(string=? x "yao")(display "fatou, manu")]
      [(string=? x "fatou")(display "yao, manu")]
[(string=? x "manu")(display "yao, fatou")]
      [else "pas de petits enfants"]
))

(define/public (neuveu x )

    (cond 
    [(string=? x "toto")(display "pepe")]
    [(string=? x "ali")(display "fitini")]
      
      [else "pas de petits enfants"]
))

(define/public (cousin)
    (display "finini Adjoua manu fatou ")
))
)


  (display "**************************************")(newline)
;(send  (new Femme%) tata)

;(send (new Famille%) neuveu(send (new Homme%) toto "?")(send (new Homme%) toto "?"))
;(send (new Homme%) toto "?")
;(send (new Femme%) tata "?")



; (femme "titi")

; (send (new ArbreGenealogique%) petitFils  "mamie" )(newline)

(display "**************************************")(newline)














