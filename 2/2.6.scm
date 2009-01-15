(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;; one
;; (add-1 zero)
;; (add-1 (lambda (f) (lambda (x) x)))
;; (lambda (f) (lambda (x) (f ((lambda (y) y) x))))
(define one (lambda (f) (lambda (x) (f (x)))))

;; two
;; (add-1 one)
;; (add-1 (lambda (g) (lambda (y) (g (y))))
(define two (lambda (f) (lambda (x) (f (f (x))))))

;; add
;; "Define add not in terms of repeated application of add-1."  I can
;; see the answer.  But something's keeping me from getting there.
