(define seqL
  (lambda (new old l)
    (cons new (cons old l))))

(define seqR
  (lambda (new old l)
    (cons old (cons new l))))  

     

(define insert-g
  (lambda (seq)
    (lambda (new old l)
      (cond 
        ((null? l ) `())
        ((eq? (car l) old)
          (seq new old (cdr l)))
        (else (cons (car l)
                ((insert-g seq) new old (cdr l))))))))    

(define insertL (insert-g seqL))    
(define insertR (insert-g seqR))  

; (define insertL
;   (insert-g
;     (lambda (new old l)
;     (cons new (cons old l))))) 

(print ((insert-g seqL) `topping `fudge `(ice cream with fudge for dessert)))

 
 
(define rember-f
  (lambda (test? a l)
    (cond 
      ((null? l) `())
      ((test? (car l) a) (cdr l))
      (else (cons (car l) (rember-f test? a (cdr l)))))))

       

(print (rember-f eq? `d `(a b c a d a)))