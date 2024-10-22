
    


(define insertR*
  (lambda (new old l)
    (cond 
      ((null? l) `())
      ((atom? (car l)) 
        (cond
          ((eq? (car l) old) 
            (cons old (cons new (insertR* new old (cdr l)))))
          (else (cons (car l) (insertR* new old (cdr l))))))
      (else (cons (insertR* new old (car l)) (insertR* new old (cdr l)))))))


(print (insertR* `b `a `(c a (c d a))))            


