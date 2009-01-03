;; Multiplying like exponentiating in 1.16

(define (fast-multiply x y)
  (define (double x) (+ x x))
  (define (halve x) (/ x 2))
  (define (even? x) (= (remainder x 2) 0))
  (define (iter x y a)
    (cond ((= 0 y) a)
          ((even? y) (iter (double x) (halve y) a))
          (else (iter x (- y 1) (+ a x)))))
  (iter x y 0))
