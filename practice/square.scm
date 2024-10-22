(define sub1
  (lambda (n)
    (- n 1)))


(define *
  (lambda (n m)
    (cond
      ((zero? m)0)
      (else (+ n(* n (sub1 m)))))))

(define square1 
  (lambda (l)
    (* (car l) (car l))))

(define square2 
  (lambda (n1 n2)
    (* n1 n2)))

(define square3 
  (lambda (n1)
    (* n1 n1)))

(define square-list
  (lambda (l)
    (cond
      ((null? l) `())
      (else (cons (square3 (car l)) (square-list (cdr l)))))))


  (print (square-list `(2)))
(print (square-list `(3 4)))
(print (square-list `(5 6 8 1)))

