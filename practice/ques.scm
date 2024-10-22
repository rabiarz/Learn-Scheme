(define is-apple?
  (lambda (a)
    (cond 
      ((eq? a 'apple) #t)
      (else #f))))

  ;(print '__*______)
  ;(print (is-apple? 'apple))
  ;=> #t
  ;(print (is-apple? 'orange))
  ;=> #f

(define is-apple2?
  (lambda (a)
    (eq? a 'apple)))

;(print '__*______)
;(print (is-apple2? 'apple))
;=> #t
;(print (is-apple2? 'orange))
;=> #f


;(one-more '())
;=> ()

;(one-more '(hoge))
;=> (hoge hoge)

;(one-more '(fuga fuga))
;=> (fuga fuga fuga)
 

(define one-more
  (lambda (l)
    (cond
      ((null? l) `())
      (else (cons (car l)) l))))



(print `_______*__________________)
(print (one-more `(dog dog))) 


(define square-list
(lambda (l)
  (cond
    ((one? l) 1)
    (else (* l l)))))

(print `_____*_)
(print (square-list `(1)))