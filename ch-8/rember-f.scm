(define rember-f 
  (lambda (test? a l)
    (cond 
      ((null? l) '())
      ((test? a (car l)) (cdr l))
      (else (cons (car l) (rember-f test? a (cdr l)))))))


(print (rember-f eq? 'a '(b c a d)))

(define multiremerEco
  (lambda (a lat col)
    (cond
      ((null? lat)
        (col `() `()))
      ((eq? (car lat) a)
        (multiremerEco a 
          (cdr lat)
            (lambda (newlat seen)
              (col newlat
                (cons (car lat) seen)))))
      (else (multiremerEco a (cdr lat)
                  (lambda (newlat seen)
                    (col (cons (car lat) newlat) seen)))))))

(define a-friend
  (lambda (x y)
    (null? y)))    

(define new-friend
  (lambda (newlat seen)
    (a-friend newlat
      (cons (car lat) seen))))   

(print (multiremerEco `tuna `(and tuna) a-friend))    
(print (multiremerEco `d `() a-friend))  