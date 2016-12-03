;;;; arrayfire-lisp.asd
;;;;
;;;; Copyright (c) 2016 ArrayFire
;;;; Copyright (c) 2016 Justin Patera <justin.patera@level3inspection.com>

(asdf:defsystem #:arrayfire-lisp
  :description "ArrayFire Bindings for Common Lisp"
  :author "Justin Patera <justin.patera@level3inspection.com>"
  :license "BSD 3-Clause License"

  :depends-on (#:cffi
               #:trivial-garbage)

  :serial t
  :pathname "src"
  :components
  ((:file "package")
   (:file "cffi")
   (:file "utils")))
