;; Compute the value of a k-term finite continued fraction, in which n
;; and d are procedures taking the current index as a argument, giving
;; the current numerator and denominator.

(define (cont-frac n d k)
  (define (iter step result)
    (if (> step k)
        result
        (iter (+ step 1)
              (/ (n step) (+ (d step) result)))))
  (iter 1 0.0))

(define (r-cont-frac n d k)
  (if (= k 0)
      0
      (/ (n k) (+ (d k) (r-cont-frac n d (- k 1))))))
