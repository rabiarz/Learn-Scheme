;(repeat-list 0 3)
;=> ()

;(repeat-list 1 2)
;=> (2)

;(repeat-list 3 5)
;=> (3 3 3)

;(repeat-list 4 1)
;=> (1 1 1 1)

(define sub1
  (lambda (n)
   (- n 1)))

(define repeat-list
  (lambda (n m)
    (cond
      ((zero? n) `())
      (else (cons m (repeat-list (sub1 n) m))))))

(print (repeat-list `3 `5)) 
(print (repeat-list `10 `8))
