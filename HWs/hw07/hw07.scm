(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (sign num)
    (cond ((= num 0) 0) ((< num 0) -1) ((> num 0) 1))
)

(define (square x) (* x x))

(define (pow x y)
    (if (= y 1) x
        (if (even? y)
            (pow (square x) (/ y 2))
            (* x (pow (square x) (/ (- y 1) 2))))))

(define (unique s)
    (if (null? s)
        nil
        (cons (car s) (unique (filter (lambda (x) (not (eq? (car s) x))) (cdr s))))))

(define (replicate x n)
    (define (rep-append len m)
        (if (= len 0) m
            (rep-append (- len 1) (cons x m))))
    (rep-append n nil))

(define (accumulate combiner start n term)
  (define (accumulate-iter x result)
      (if (> x n) result
          (accumulate-iter (+ 1 x) (combiner result (term x)))))
  (accumulate-iter 1 start)
)

(define (accumulate-tail combiner start n term)
  (define (accumulate-iter x result)
      (if (> x n) result
          (accumulate-iter (+ 1 x) (combiner result (term x)))))
  (accumulate-iter 1 start)
)

(define-macro
 (list-of map-expr for var in lst if filter-expr)
 `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)
