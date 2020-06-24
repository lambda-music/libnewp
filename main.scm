
(if (defined? -DEFINED-LIBNEWP )
    (abort '(aborted already-defined)))

(define -DEFINED-LIBNEWP #t)
(define newp-all '())
(define (newp-clear)
  (for-each (lambda (x) (kilp x) ) newp-all )
  (set! newp-all '() )
  (sleep 1000))

(define (newp-add v)
  (set! newp-all (xcons newp-all v)))

; These identifies are obsolete; they are defined to maintain the backward compatibility.
(define add-newp newp-add)
(define clear-newp newp-clear)

; (define a (newp-object process: (newp "sleep" "10" ) server-name: "hello" port-name: "bar" ))

(define-class newp-object ()
  (process)
  (server-name)
  (port-name)
  ((stop) 
   (kilp (this):process )))
