#lang racket

;;Checks if the point is in the circle
(define (in-circle x y)
  (<= (sqrt (+ (sqr x) (sqr y))) 1))

;;creates a random point
(define (random-point)
  (* 2 (- (random) 1/2)))

;;calculates an estimation of pi
(define (estimate-pi num)
  (define x 0)
  ;;loops the number of tests
  (let loop ((times num))
    ;;if no more loops remain it displays the estimation
   (if (= times 0)
     (display (exact->inexact (/(* 4 x) num)))
     ;;if the point is in the circle then increment x
     (begin (if (in-circle (random-point) (random-point))
                (set! x (add1 x))
                (display ""))
            (loop (- times 1))))))