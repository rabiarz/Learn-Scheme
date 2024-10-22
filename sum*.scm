(define sum*
  (lambda (l)
    (cond
      ((null? l) 0)
        ((number? (car l))
        (+ (car l) (sum*  (cdr l))))
      (else (+ (sum* (car l)) (sum* (cdr l)))))))

(print (sum* `(1 2 3)))    
(print (sum* `((1) 9 3)))   
(print (sum* `()))