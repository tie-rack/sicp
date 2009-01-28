;; Write a procedure same-parity that takes one or more integers and
;; returns a list of all the arguments that have the same even-odd
;; parity as the first argument. For example,

;; (same-parity 1 2 3 4 5 6 7)
;; (1 3 5 7)

;; (same-parity 2 3 4 5 6 7)
;; (2 4 6)

(define (same-parity seed . items)
  (define (same-pairity? x y)
    (= (remainder x 2) (remainder y 2)))
  (define (add-if-same-pairity seed item items)
    (if (same-pairity? seed item)
        (cons item items)
        items))
  (define (iter seed items paired-items)
    (let ((new-pairs (add-if-same-pairity seed (car items) paired-items)))
      (if (null? (cdr items))
        new-pairs
        (iter seed (cdr items) new-pairs))))
  (reverse (iter seed items (list seed))))
