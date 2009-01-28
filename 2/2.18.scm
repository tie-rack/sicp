;; Exercise 2.18.  Define a procedure reverse that takes a list as
;; argument and returns a list of the same elements in reverse order:

;; (reverse (list 1 4 9 16 25))
;; (25 16 9 4 1)

(define (reverse items)
  (define (iter items reversed-items)
    (if (null? (cdr items))
        (cons (car items) reversed-items)
        (iter (cdr items) (cons (car items) reversed-items))))
  (iter items (list)))
