;; Define a better version of make-rat that handles both positive and
;; negative arguments. Make-rat should normalize the sign so that if
;; the rational number is positive, both the numerator and denominator
;; are positive, and if the rational number is negative, only the
;; numerator is negative.

(define (make-rat n d)
  ;; If both n and d are negative or n is positive and d is negative,
  ;; then we can switch the signs of both.  In the first case, n and d
  ;; will both be positive, and in the second case, n will be negative
  ;; and d will be positive, which is what we want.  We can just test
  ;; for d being negative, though.
  (if (< d 0)
      (make-rat (- 0 n) (- 0 d))
      (cons n d)))
