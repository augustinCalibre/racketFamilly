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




;;(define famille%
; (class object%
;  (super-new)
; (define (homme) 't)
; (define (femme) 'femme)
;  ))

;(send (new famille%) homme)

(define Femme%
  (class object%
     (super-new)
      ;(define tru #t)(define false #f)
    
      (define/public (tata)(define tata #t)(write tata))
  ))

(define Homme%
  (class Femme%
     (super-new)
    (inherit  tata)
      ;(define tru #t)(define false #f)
    
      (define/public (toto)(define toto #t)(write toto))
   ))





(define Famille%
  (class Homme%
    (super-new)
    (inherit  toto)
    (define (parent tata toto)
            (if (eq? tata toto )
            (write #t)
            (write #f)
                )
            )))

    
    ;;Methode femme
    ;;(define (femme x)
    ;;  (if (eq? x #f )(write #t)(write #f)))
        
  
    ;;(public  parent )
    ;;))



;;(send (new famille%)femme tata)
;;(define x (new famille%))
;;(send x femme tata)


;;initialisation des hommes
;(new  toto (new Homme%))



;;initialisation des hommes
;(send (new Femme%) tata)

(write "**************************************")
;(send  (new Homme%) toto)

; (send  (new Famille%) parent (send(new Homme%) toto)(send (new Femme%) tata))













