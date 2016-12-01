;;;; arrayfire-lisp.asd
;;;;
;;;; Copyright (c) 2016 ArrayFire
;;;; Copyright (c) 2016 Justin Patera <justin.patera@level3inspection.com>

(asdf:defsystem #:arrayfire-lisp
  :description "ArrayFire Bindings for Common Lisp"
  :author "Justin Patera <justin.patera@level3inspection.com>"
  :license "BSD 3-Clause License"
  :depends-on (#:cl-autowrap)

  :serial t
  :pathname "src"
  :components
  ((:module autowrap-spec
    :pathname "spec"
    :components
    ((:static-file "ArrayFire.h")
     (:static-file "ArrayFire.arm-pc-linux-gnu.spec")
     (:static-file "ArrayFire.i386-unknown-freebsd.spec")
     (:static-file "ArrayFire.i686-apple-darwin9.spec")
     (:static-file "ArrayFire.i686-pc-linux-gnu.spec")
     (:static-file "ArrayFire.i686-pc-windows-msvc.spec")
     (:static-file "ArrayFire.x86_64-apple-darwin9.spec")
     (:static-file "ArrayFire.x86_64-pc-linux-gnu.spec")
     (:static-file "ArrayFire.x86_64-pc-windows-msvc.spec")
     (:static-file "ArrayFire.x86_64-unknown-freebsd.spec")))
   (:file "package")
   (:file "autowrap")
   (:file "utils")))
