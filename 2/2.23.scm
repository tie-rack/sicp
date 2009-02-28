(define (for-each proc items)
  (proc (car items))
  (if (null? (cdr items))
      #t
      (for-each proc (cdr items))))
