;; Modify your reverse procedure of exercise 2.18 to produce a
;; deep-reverse procedure that takes a list as argument and returns as
;; its value the list with its elements reversed and with all sublists
;; deep-reversed as well. For example,

;; (define x (list (list 1 2) (list 3 4)))

;; (reverse x)
;; ((3 4) (1 2))

;; (deep-reverse x)
;; ((4 3) (2 1))

(define (deep-reverse items)
  (define (iter items reversed-items)
    (cond ((not (pair? items))
           (if (null? reversed-items)
               items
               (cons items reversed-items)))
          ((null? (cdr items)) (cons (deep-reverse (car items)) reversed-items))
          (else (iter (cdr items) (cons (car items) reversed-items)))))
  (iter items ()))
