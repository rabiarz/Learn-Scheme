(define one-more
(lambda (l)
  (cond
    ((null? l) `())
    (cons (one-more (cdr l))))))

(print (one-more `(dog)))    



;(square-list '())
;=> ()

;(square-list '(2))
;=> (4)

;(square-list '(4 5 6))
;=> (16 25 36)

;(square-list '(1 2 3 4))
;=> (1 4 9 16)


