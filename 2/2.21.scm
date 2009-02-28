;; The procedure square-list takes a list of numbers as argument and
;; returns a list of the squares of those numbers.

(define (square x) (* x x))

;; Without map
(define (square-list-no-map items)
  (if (null? items)
      ()
      (cons (square (car items)) (square-list-no-map (cdr items)))))

;; With map
(define (square-list-map items)
  (map square items))
