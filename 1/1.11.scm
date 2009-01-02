;; f(n) = n if n < 3
;; f(n) = f(n - 1) + 2 * f(n - 2) + 3 * f(n - 3) if n >= 3

(define (f-recursive n)
  (if (< n 3)
      n
      (+
       (f-recursive (- n 1))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3))))))

;; use a, b, c initialized to f(2) = 2, f(1) = 1, f(0) = 0 and apply
;; the simultaneous transformations
;;
;; a <- a + 2b + 3c
;; b <- a
;; c <- b
(define (f-iterative n)
  (define (f-iterate a b c count)
    (if (= count 0)
	c
	(f-iterate (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (f-iterate 2 1 0 n))
