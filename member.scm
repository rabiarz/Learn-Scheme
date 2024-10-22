(define member?
  (lambda (a lat)
   (cond
    ((null? lat) #f)
    (else (or (eq? (car lat) a)
            (member? a (cdr lat)))))))

(print (member? ` raha `()))
(print (member? ` raha `(a b c raha)))
(print (member? ` raha `(raha)))
(print (member? `a `(a b c)))


(define members?
 (lambda (a b lat) 
   (cond
    ((null? lat) #f)
    (else (or (and (eq? (car lat) a) (eq? (car (cdr lat)) b))
                (members? a b (cdr lat)))))))

(print (members? `apple `banana `(apple banana)))
(print (members? `apple `banana `(bacon banana)))
(print (members? `apple `banana `(bacon apple banana)))
(print (members? `apple `banana `(apple banana bacon)))
(print (members? `apple `banana `(banana apple bacon)))
(print (members? `apple `banana `(apple bacon banana)))

(define members?
 (lambda (a b lat)
   (cond
    ((null? lat) #f)
    (else (and (member? a lat) (member? b lat))))))                                     

(print (members? `apple `banana `(apple bacon banana))) 

(define atom?
  (lambda (x)
   (and (not (pair? x)) (not (null? x)))))

(define member*
  (lambda (a l)
    (cond
      ((null? l) #f)
      ((atom? (car l))
        (or (eq? (car l) a) (member* a (cdr l))))
      (else (or (member* a (car l)) (member* a (cdr l)))))))

(print (member* `a `((a) b c)))  
