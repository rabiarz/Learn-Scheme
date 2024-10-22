(define lastatom
  (lambda (l)
    (cond
      ((null? l) `())
      ((null? (cdr l)) (car l))
      (else (lastatom (cdr l))))))

(print (lastatom '(1 2 4)))
(print (lastatom '()))


(define lastatom1
  (lambda (l)
    (null? (cdr l)) (car l)))

(print (lastatom1 `(7 8)))  

; (print (isEq? '1 '1)) => #t
; (print (isEq? '1 '2)) => #f
; (print (isEq? '2 '3)) => #f

(define isEq?
  (lambda (a b)
  (cond
    ((= a b) #t)
    (else #f))))

(print (isEq? `4 `5))
(print (isEq? `4 `4))

(define same?
  (lambda (m n)
    (cond
    ((or (> m n) ( < m n)) #f)
    (else #t))))

(print "____SAME_1____")
(print (same? `8 `8))  
(print (same? `7 `8))  


(define same2?
(lambda (m n)
  (cond
    ((> n m) #f) 
    ((< n m) #f)
    (else #t))))
(print "____SAME_2____")
(print (same2? `8 `8))  
(print (same2? `7 `8))





