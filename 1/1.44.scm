(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))))

(define (smooth f)
  (lambda (x)
    (/
     (+ (f (- x 0.001))
        (f x)
        (f (+ x 0.001)))
     3)))
