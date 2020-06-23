
(define-if-not-defined newp-all '() )

(define (newp-clear)
  (for-each (lambda (x) (kilp x) ) newp-all )
  (set! newp-all '() )
  (sleep 1000))

(define (newp-add v)
  (set! newp-all (xcons newp-all v)))

; These identifies are obsolete; they are defined for the backward compatibility.
(define add-newp newp-add)
(define clear-newp newp-add)


