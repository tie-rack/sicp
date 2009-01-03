;; Design a procedure that evolves an iterative exponentiation process
;; that uses successive squaring and uses a logarithmic number of
;; steps, as does fast-expt.
;;
;; (b ** (n / 2)) ** 2 == (b ** 2) ** (n / 2) == b ** n

(define (fast-expt-2 b n)
  (define (square x) (* x x))
  (define (even? x) (= (remainder x 2) 0))
  (define (fast-exp-iter b n a)
    (cond ((= 0 n) a)
          ((even? n) (fast-exp-iter (square b) (/ n 2) a))
          (else (fast-exp-iter b (- n 1) (* a b)))))
  (fast-exp-iter b n 1))
