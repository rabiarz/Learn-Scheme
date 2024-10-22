(define insertR
(lambda (new old lat)
  (cond
    ((null? lat) `())
    ((eq? (car lat) old)
      (cons old 
        (cons new (cdr lat))))
    (else (cons (car lat)
            (insertR new old (cdr lat)))))))

(print (insertR `raha `rabia `(andres rabia)))
(print (insertR ` topping ` fudge ` (ice cream with fudge for dessert)))

(define multinsertR
  (lambda (new old lat)
    (cond 
      ((null? lat) `())
      ((eq? (car lat) old)
        (cons old
          (cons new (multinsertR new old (cdr lat)))))
      (else (cons (car lat) (multinsertR new old (cdr lat)))))))

(print (multinsertR `b `a `(c a c d a)))   


(define insertL
  (lambda (new old lat)
    (cond 
      ((null? lat) `())
      (else (cond
        ((eq? (car lat) old)
          (cons new 
            (cons old (cdr lat))))
        (else (cons (car lat)
                (insertL new old (cdr lat)))))))))

(print (insertL ` topping ` fudge ` (ice cream with fudge for dessert))) 


(define multinsertL
  (lambda (new old lat)
    (cond 
      ((null? lat) `())
      ((eq? (car lat) old)
        (cons new 
          (cons old (multinsertL new old (cdr lat)))))
      (else (cons (car lat) (multinsertL new old (cdr lat)))))))             