;; Compute the value of a k-term finite continued fraction, in which n
;; and d are procedures taking the current index as a argument, giving
;; the current numerator and denominator.

(define (cont-frac n d k)
  (define (iter k result)
    (if (= k 0)
        result
        (iter (- k 1)
              (/ (n k) (+ (d k) result)))))
  (iter k 0.0))

(define (r-cont-frac n d k)
  (define (recurse step)
    (if (> step k)
        0
        (/ (n step) (+ (d step) (recurse (+ step 1))))))
  (recurse 1))
