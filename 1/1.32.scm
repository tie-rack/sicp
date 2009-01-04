;; accumulate

(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a null-value))

(define (r-accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (r-accumulate combiner (next a) next b))))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (sum term a next b)
  (accumulate + 0 term a next b))
