(define one?
  (lambda (n)
    (= n 1)))

(define even?
  (lambda (n)
    (cond 
      ((zero? n) #t) 
      ((= n -1) #f)
      (else (even? (- n 2))))))

(print (even? 5))
(print (even? 6))
(print (even? 11))
(print (even? 1))
(print (even? 2))

(define include-even?
  (lambda (l)
    (cond
     ((null? l) #f)
     ((even? (car l)) #t) 
     (else (include-even? (cdr l))))))
(print `___________1_____)
(print (include-even? `(2 4 6)))   
(print (include-even? `(3 5 6))) 
(print (include-even? `(3 5 9)))



; (filter-odd '(1 2 3 4 5 6 7 8 9))  ; => (1 3 5 7 9)
; (filter-odd '(2 4 6 8))            ; => ()
; (filter-odd '())                   ; => ()
; write the function filter-odd

(define odd?
  (lambda (n)
    (cond 
      ((zero? n) #f) 
      ((= n 1) #t)
      (else ( odd? (- n 2))))))

(define filter-odd
  (lambda (l)
    (cond 
      ((null? l) `())
      ((odd? (car l)) (cons (car l) (filter-odd (cdr l)))) 
      (else (filter-odd (cdr l))))))

(print (filter-odd `(7 8 9)))
(print (filter-odd `(2 6 8)))
(print (filter-odd `()))
