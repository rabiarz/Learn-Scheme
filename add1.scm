(define add1
  (lambda (n)
    (+ n 1)))


(define sub1
  (lambda (n)
    (- n 1)))


(define plus
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (add1 (plus n (sub1 m))))))) 

;(print (plus `14 `3))      


(define *
  (lambda (n m)
    (cond
      ((zero? m) 0)
      (else (+ n (* n (sub1 m)))))))
    


;(print (* 3 (+ 3 (add1 (car (cdr '(4 5 6))))))) 

(define addtup
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else (+ (car tup) (addtup (cdr tup)))))))

(print (addtup `(1 2 3)))

(define tup+
  (lambda (tup1 tup2)
    (cond
      ((null? tup1) tup2)
      ((null? tup2) tup1)  
      (else (cons (+ (car tup1) (car tup2))
              (tup+ (cdr tup1) (cdr tup2)))))))

(print (tup+ `(1 2) `(3 4)))            
(print (tup+ `(1 2 3) `(3 4)))
(print (tup+ `(1 2) `(2 3 4)))
(print (tup+ `() `()))

(define rempick
  (lambda (n lat)
    (cond
      ((zero? (sub1 n)) (cdr lat))
      (else (cons (car lat)
                (rempick (sub1 n) (cdr lat)))))))

(print (rempick `3 `(a b c d)))    

(define nonums
  (lambda (lat)
    (cond
      ((null? lat) `())
      (else (cond
      ((number? (car lat))
        (nonums (cdr lat)))
      (else (cons (car lat) (nonums (cdr lat)))))))))

(print (nonums `(1 a b 2 s 4))) 

(define all-nums
  (lambda (lat)
    (cond
      ((null? lat) `())
      ((number? (car lat))
        (cons (car lat) (all-nums (cdr lat))))
      (else (all-nums (cdr lat))))))

(print (all-nums `(1 a b s 4)))

(define atom?
(lambda (x)
  (and (not (pair? x)) (not (null? x)))))

(define all-atom
  (lambda (lat)
    (cond
      ((null? lat) `())
      ((atom? (car lat))
        (cons (car lat) (all-atom (cdr lat))))
      (else (all-atom (cdr lat))))))

(print (all-atom `(1 a b 3 c 4)))
(print (all-atom `(1 a b 3 (1 2) 4)))

(define occur
  (lambda (a lat)
    (cond
      ((null? lat) 0)
      ((eq? (car lat) a)
        (add1 (occur a (cdr lat))))
      (else (occur a (cdr lat))))))

(print (occur `a `(a b a c a))) 

(define but-last
  (lambda (l)
    (cond 
      ((null? (cdr l)) `())
      (else (cons (car l) (but-last (cdr l)))))))
        

(print `_____1______)
(print (but-last `(1 2 3 4 5))) 

(define sum*
  (lambda (l)
    (cond
      ((null? l) 0)
      ((atom? (car l))
        (+ (car l) (sum* (cdr l))))
      (else  
        (sum* (car l))))))

(print (sum* `(1 2))) 
(print (sum* `(1 2 5)))  
(print (sum* `(1 2 3 (4 (10)))))


(define reverseList
  (lambda (l nl)
    (cond 
      ((null? l) nl)
    (else (reverseList (cdr l) (cons (car l) nl))))))

(define reverse 
  (lambda (l)
    (reverseList l '())))


(print (reverse '())) ; => ()
(print (reverse '(1 2 3 4 5))) ; => (5 4 3 2 1)
(print (reverse '(a b c d e))) ; => (e d c b a)

(define one?
  (lambda (n)
    (= 1 n)))

(define calculator
  (lambda (n m x)
    (cond
      ((zero? n) (+ m x))
      ((one? n) (- m x))
      (else (* m x)))))
    
(print (calculator `0 `3 `3))    
(print (calculator `1 `3 `3))
(print (calculator `2 `3 `3))