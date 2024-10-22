(define but-last
  (lambda (l)
    (cond
      ((null? l) `())
      ((null? (cdr l)) `())
      (else (cons (car l) (but-last (cdr l)))))))

(print (but-last `(1 2 3 4 5))) 
(print (but-last `(2 3)))   
(print (but-last `(2))) 
(print (but-last `())) 

                



