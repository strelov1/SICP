(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))
    
(test 0 (p))
;;Если нормальный порядок вычисления то вернет 0
;;Если аппликативный упадет в бесконечную рекурсию
