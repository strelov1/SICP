(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		(else else-clause)))

(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
			x)))

; (define (sqrt-iter guess x)
;     (if (good-enough? guess x)
;         guess
;         (sqrt-iter (improve guess x)
;             x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (square x) (* x x))

(define (sqrt x)
	(sqrt-iter 1.0 x))

(sqrt 2) 
; Если использовать new-if - то уходит в бесконечную рекурсию
; Если обычный if -  то 1.4142156862745097
