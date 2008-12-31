;; This, of course, has the same problems as the naive square root
;; algorithm in the book with small and large numbers.

(define (cuberoot x)
  (cuberoot-iter 1.0 x))

(define (cuberoot-iter guess x)
  (if (good-enough? guess x)
      guess
      (cuberoot-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
