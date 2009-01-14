(define (l-cons x y)
  (lambda (m) (m x y)))

(define (l-car z)
  (z (lambda (p q) p)))

(define (l-cdr z)
  (z (lambda (p q) q)))
