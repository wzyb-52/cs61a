
(define-macro (def func args body)
    `(define ,func (lambda ,args ,body)))


(define (map-stream f s)
    (if (null? s)
    	nil
    	(cons-stream (f (car s)) (map-stream f (cdr-stream s)))))

(define all-three-multiples
  (cons-stream 3 (map-stream (lambda (x) (+ 3 x)) all-three-multiples))
)


(define (compose-all funcs)
  (if (null? funcs) 
      (lambda (x) x)
      (lambda (x) ((compose-all (cdr funcs)) ((car funcs) x))))
)


(define (partial-sums stream)
  (define (helper start s)
      (if (null? s) nil
          (cons-stream (+ start (car s)) (helper (+ start (car s)) (cdr-stream s)))))
  (helper 0 stream)
)

