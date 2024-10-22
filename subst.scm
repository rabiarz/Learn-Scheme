(define subst
  (lambda (new old lat)
    (cond
      ((null? lat) `())
      ((eq? (car lat) old)
        (cons new (cdr lat)))
      (else (cons (car lat)
             (subst new old 
              (cdr lat)))))))

(print (subst `topping `fudge `(ice cream with fudge for dessert)))


(define multisubst
  (lambda (new old lat)
    (cond
      ((null? lat) `())
      ((eq? (car lat) old)
        (cons new (multisubst new old (cdr lat))))
      (else (cons (car lat) (multisubst new old (cdr lat)))))))

(print (multisubst `topping `fudge `(ice with fudge for dessert fudge)))   


(define subst2
(lambda (new o1 o2 lat)
  (cond
    ((null? lat) `())
    ((eq? (car lat) o1)
       (cons new (cdr lat)))
    ((eq? (car lat) o2)
           (cons new (cdr lat)))
    (else (cons (car lat)
             (subst2 new o1 o2
               (cdr lat)))))))

(print (subst2 `vanilla `chocolate `banana `(banana ice cream with chocolate topping)))