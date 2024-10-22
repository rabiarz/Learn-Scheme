(define sums
  (lambda (l1 l2)
    (cond
      ((and (null? l1) (null? l2)) `())
      ((null? l1) l2)
      ((null? l2) l1)
      (else (cons (+ (car l1) (car l2))
              (sums (cdr l1) (cdr l2)))))))

;(print (sums `(1) `(3)))
;(print (sums `(5 9) `(3 10)))
(print (sums `(5) `(3 10))) 
(print (sums `(5 9) `(10)))
(print (sums `(5 9) `(10 4 3)))
(print (sums `(5 9 3 8 9) `(10 4 3)))