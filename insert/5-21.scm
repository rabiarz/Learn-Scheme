

(define member*
  (lambda (a l)
    (cond 
      ((null? l) #f)
      ((atom? (car l))
        (or (eq? (car l) a)
          (member* a (cdr l))))
      (else (or (member* a (car l))
          (member* a (cdr l)))))))

(print (member* `chips `((potato) (chips ((with) fish) (chips)))))

(define leftmost
  (lambda (l)
    (cond
      ((atom? (car l)) (car l))
      (else (leftmost (car l))))))


(print (leftmost `(raha hiroki rabi)))
(print (leftmost `((raha) hiroki rabi)))
;(print (leftmost `(() hiroki rabi)))

(define eqan?
  (lambda (a1 a2)
    (eq? a1 a2)))
      
(print `____++_____)
(print (eqan? `rabi `rabi))
(print (eqan? `(rabi) `(rabi)))


(define eqlist?
  (lambda (l1 l2)
    (cond 
      ((and (null? l1) (null? l2)) #t)
      ((and (null? l1) (atom? (car l))) #f)
      ((null? l1) #f)
      ((and (atom? (car l1)) (null? l2)) #f)
      ((and (atom? (car l1)) (atom? (car l2)))
        (and (eqan? (car l1) (car l2))
            (eqlist? (cdr l1) (cdr l2))))
      ((atom? (car l1)) #f)
      ((null? l2) #f)
      ((atom? (car l2)) #f)
      (else
        (and (eqlist? (car l1) (car l2))
          (eqlist? (cdr l1) (cdr l2)))))))
(print `________*____)
(print (eqlist? `(beef ((sausage)) (and (soda))) `(beef ((sausage)) (and (soda)))))        
(print (eqlist? `(beef (sausage) (and (soda))) `(beef ((sausage)) (and (soda))))) 

(define equal?
  (lambda (s1 s2)
    (cond
      ((and (atom? s1) (atom? s2))
           (eqan? s1 s2))
          ((atom? s1) #f)
          ((atom? s2) #f)
          (else (eqlist? s1 s2)))))
(define add1
  (lambda (n)
    (+ 1 n)))

(define occur*
  (lambda (a l)
    (cond
      ((null? l) 0)
      ((atom? (car l))
        (cond
        ((eq? (car l) a)
          (add1 (occur* a (cdr l))))
        (else (occur* a (cdr l)))))
      (else (+ (occur* a (car l))
              (occur* a (cdr l))))))) 
              
(print (occur* `r `((a r) r (r d))))              

(define )

