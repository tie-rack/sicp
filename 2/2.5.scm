(define (n-cons a b)
  (* (expt 2 a)
     (expt 3 b)))

;; I don't know what to call this.  I used to know.  Back when I took
;; number theory.  I'm also not concerned about performance, I want to
;; practice this pattern.
(define (inner-log n x)
  (define (iter n x result)
    (if (> (remainder n x) 0)
        result
        (iter (/ n x) x (+ result 1))))
  (iter n x 0)
)

(define (n-car z)
  (inner-log z 2))

(define (n-cdr z)
  (inner-log z 3))
