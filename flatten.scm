(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define combine-list
  (lambda (l1 l2)
    (cond
    ((null? l1) l2)
    (else (cons (car l1) (combine-list (cdr l1) l2))))))

(define flatten
  (lambda (l)
    (cond
      ((null? l) `())
      ((atom? (car l)) (cons (car l) (flatten (cdr l))))
      (else (combine-list (flatten (car l)) (flatten (cdr l)))))))

(print (flatten `((2 4))))     
(print (flatten `(1 2 (5 (7) 4) 9)))    
(print (flatten `()))     
(print (flatten `(1 2 5 7 4)))    
(print (flatten `((1) 2 (5) 7 (4))))

