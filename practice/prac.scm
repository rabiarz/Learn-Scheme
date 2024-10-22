
(define divide
(lambda (m n)
  (cond
    ((zero? n) `noAnswer)
    (else (/ m n)))))

(print (divide 20 60))
(print (divide 0 60))

(print (divide 20 0))

(define (cons a ` 40 l `(20 ((30)))))
(print (cons (cdr (car (cdr (car (cdr l)))))))

(print (and #t (not (or #t (lat? '(apple (banana)))))))




