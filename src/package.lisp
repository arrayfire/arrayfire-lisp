;;;; package.lisp
;;;;
;;;; Copyright (c) 2016 ArrayFire
;;;; Copyright (c) 2016 Justin Patera <justin.patera@level3inspection.com>

(in-package :cl)

(defpackage #:arrayfire-ffi)
(defpackage #:arrayfire-ffi.accessors)
(defpackage #:arrayfire-ffi.functions)

(defpackage #:arrayfire
  (:use #:cl)
  ; as these will probably pose a small issue...
  (:shadow ; Arithmatic Ops
           #:+ #:- #:* #:/
           ; Complex Ops
           #:complex #:real
           ; Exponential & Logarithmic Fns
           #:exp #:log #:sqrt
           ; Logical Ops
           #:and #:eq #:not #:or
           ; Numeric Fns
           #:abs #:floor #:max #:min #:mod #:rem #:round
           ; Trigonometric & Hyberbolic Fns
           #:acos #:asin #:atan #:cos #:sin #:tan
           #:acosh #:asinh #:atanh #:cosh #:sinh #:tanh)
  (:export ;; lots more than this...
           ; Arithmatic Ops
           #:+ #:- #:* #:/
           ; Complex Ops
           #:complex #:real
           ; Exponential & Logarithmic Fns
           #:exp #:log #:sqrt
           ; Logical Ops
           #:and #:eq #:not #:or
           ; Numeric Fns
           #:abs #:floor #:max #:min #:mod #:rem #:round
           ; Trigonometric & Hyberbolic Fns
           #:acos #:asin #:atan #:cos #:sin #:tan
           #:acosh #:asinh #:atanh #:cosh #:sinh #:tanh))
