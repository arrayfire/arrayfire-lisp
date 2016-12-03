;;;; autowrap.lisp
;;;;
;;;; Copyright (c) 2016 ArrayFire
;;;; Copyright (c) 2016 Justin Patera <justin.patera@level3inspection.com>

(in-package :arrayfire)

; add utils here

; because FizzBuzz is *essential* to our success!!!
(defun fizzbuzz (n)
  (if (< 0 n)
      (fizzbuzz-helper 1 n)
      (error "The Fizzing And The Buzzing And The FizzBuzzing Needs Numbers Greater Than Zero")))

(defun fizzbuzz-helper (n x)
  (if (<= n x)
      (cons
        (case (mod n 15)
          (0 "FizzBuzz")
          ((3 6 9 12) "Fizz")
          ((5 10) "Buzz")
          (otherwise n))
        (fizzbuzz-helper (+ 1 n) x))))
