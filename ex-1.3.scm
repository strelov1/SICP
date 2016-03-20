 #lang racket

(define (sum-sqrt-max a b c) 
   (cond 
        ((and 
            (> a b)
            (> a c)
            (> b c)) 
                (+ (sqrt a) (sqrt b)))
        ((and 
            (> a b)
            (> a c)
            (> c b))
                (+ (sqrt a) (sqrt c)))
        ((and 
            (> b a)
            (> b c)
            (> a c))
                (+ (sqrt b) (sqrt a)))
        ((and 
            (> b a)
            (> b c)
            (> c a))
                (+ (sqrt b) (sqrt c)))
        ((and 
            (> c a)
            (> c b)
            (> a b))
                (+ (sqrt c) (sqrt a)))
        ((and 
            (> c a)
            (> c b)
            (> b a))
                (+ (sqrt c) (sqrt b)))
    )
)

(define (sqrt x) (* x x))

(sum-sqrt-max 7 5 6)
