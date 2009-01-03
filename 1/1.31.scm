;; product (like sum)

(define (product-iteratively term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (product-recusrively term a next b)
  (if (> a b)
      1
      (* (term a) (product-recusrively term (next a) next b))))
