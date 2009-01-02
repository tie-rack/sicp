;; Find the value of an element of Pascal's triangle (given by its
;; 1-indexed row and position).

(define (pascal-value row position)
  ;; The number of positions in a row is conveniently the same as the
  ;; row number.  last-position probably doesn't really need to exist,
  ;; but it makes outside-triangle? and edge? read a little tiny bit
  ;; better.
  (define (last-position row)
    row)
  (define (outside-triangle? row position)
    (or
     (< position 1)
     (> position (last-position row))
     (< row 1)))
  (define (edge? row position)
    (or
     (= position 1)
     (= position (last-position row))))
  (cond
   ((outside-triangle? row position) 0)
   ((edge? row position) 1)
   (else (+
          (pascal-value (- row 1) (- position 1))
          (pascal-value (- row 1) position)))))
