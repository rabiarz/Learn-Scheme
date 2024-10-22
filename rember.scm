(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote()))
      ((eq? (car lat) a) (cdr lat))
      (else (cons (car lat)
            (rember a (cdr lat)))))))

(print (rember `raha `(rabia raha andres)))


(define multirember
  (lambda (a lat)
    (cond
      ((null? lat) `())
      ((eq? (car lat) a) (multirember a (cdr lat)))
      (else (cons (car lat) (multirember a (cdr lat)))))))

(print (multirember `a `(a b c a d a)))


(define atom?
  (lambda (x)
   (and (not (pair? x)) (not (null? x)))))

(define rember*
  (lambda (a l)
    (cond
      ((null? l) `())
      ((atom? (car l))
        (cond
          ((eq? (car l) a) (rember* a (cdr l)))
           (else (cons (car l) (rember* a (cdr l))))))
      (else (cons (rember* a (car l)) (rember* a (cdr l)))))))

(print (rember* `a `(a b c (a) d (a))))
  