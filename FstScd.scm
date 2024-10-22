(define firsts
  (lambda (l)
    (cond
      ((null? l) quote ())
      (else (cons (car (car l))
            (firsts (cdr l)))))))
          
(print (firsts ` ((a b) (c d) (e f))))


(define seconds
  (lambda (l)
    (cond 
      ((null? l) `())
      (else (cons (car (cdr (car l))) (seconds (cdr l)))))))

(print (seconds `((a b) (c d) (e f))))