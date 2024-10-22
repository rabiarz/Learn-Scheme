; Input is: (1 2 4 5 6), Output should be:  (1 2 3 4 5 6)
; Input is: (1 2 3 4 6 7), Output should be:  (1 2 3 4 5 6 7)
; Input is: (), Output should be:  ()

(define add1
  (lambda (n)
    (+ 1 n)))

(define insertAdd1
  (lambda (l)
    (cons (add1 (car l)) (cdr l))))

(define nullList
  (lambda (l)
    ((null? l) '())))

(define addMisNum
  (lambda (lan)
    (cond 
      (nullList lan)
      ((eq? (+ 1 (car lan)) (car (cdr lan))) 
                  (cons (car lan) (addMisNum (cdr lan))))
      (else (cons (car lan) (insertAdd1 lan))))))


; (add1 (car lan)) <=> (+ 1 (car lan))
; (print (eq? (+ 1 (car l)) (car (cdr l))))
; (cons (+ 1 (car (cdr lan))) (cdr  lan))

(print (addMisNum '()))
(print (addMisNum '(1 2 4 5 6))) ; => (1 3 4 5 6)
(print (addMisNum '(1 3 4 5 6))) ; => (2 3 4 5 6)
(print (addMisNum '(1 2 3 4 5 7 8))) ; => ? (1 2 3 4 6 7 8)
