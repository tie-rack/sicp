(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (bigger-of-two x y) (if (> x y) x y))

(define (biggest-of-three x y z)
  (if (> x (bigger-of-two y z)) x (bigger-of-two y z)))

(define (second-biggest-of-three x y z)
  (if (> x y)
      (if (> y z) y (if (> x z) z x))
      (if (> x z) x (if (> z y) y z))))

(define (sum-of-squares-of-bigger-two x y z)
  (sum-of-squares (biggest-of-three x y z) (second-biggest-of-three x y z)))
