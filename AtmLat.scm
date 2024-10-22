(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l))) 
      (else #f))))

(print (lat? `(raha rabia andres)))
(print (lat? `(bacon (and egg))))
(print (lat? `(rice meat mash potatoes)))
(print (and #t (not (or #t (lat? '(apple (banana)))))))
(print (lat? '(I am learning machinde codeing)))

(define l `(apple banana))
(print (car l))

(define l1 `((apple) banana))
(print (car l1))

(define l2 `(aplle (banana)))
(print (car l2))

(define l3 `((apple banana)))
(print (car l3))

(define l4 `((apple) banana))
(print (cdr l4))

(define l5 `(apple (banana)))
(print (cdr l5))

(define l6 `((apple banana)))
(print (cdr l6))

(define l7 `(apple banana))
(print (car (cdr l7)))

(define l `(a b ((c d)) e))
(print (car (cdr (car (car (cdr (cdr l)))))))



(print "_____1______")
(print (or #t (lat? '(a b)))) ; #t 

(print "_____2______")
(print (or #f (lat? '(a b)))) ; #t 

(print "_____3______")
(print (or #f (lat? '(a (c) b)))) ; #f

(print "_____4______")
(print (or #t (lat? '(())))) ; #t

(print "_____5______")
(print (or #f (lat? '(rah (hir rab))))) ; #f


(print "_____not______")
(print (not (or #t (lat? '(a b))))) ; #t 

(print "_____2______")
(print (not (or #f (lat? '(a b))))) ; #t 

(print "_____3______")
(print (not (or #f (lat? '(a (c) b))))) ; #f

(print "_____4______")
(print (not (or #t (lat? '(()))))) ; #t

(print "_____5______")
(print (not (or #f (lat? '(rah (hir rab)))))) ; #f

(define l `((1 4)))
(print (car (cdr (car l))))