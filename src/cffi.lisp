;;;; cffi.lisp
;;;;
;;;; Copyright (c) 2016 ArrayFire
;;;; Copyright (c) 2016 Justin Patera <justin.patera@level3inspection.com>

(in-package :arrayfire)

(define-foreign-library arrayfire
  (t (:default "af")))

(use-foreign-library arrayfire)

; make array
(defctype af-array :pointer)
(defctype dim-t :long-long)

(defcenum af-dtype
  :f32
  :c32
  :f64
  :c64
  :b8
  :s32
  :u32
  :u8
  :s64
  :u64
  :s16
  :u16)


(defcenum af-err
  :af-success
  :af-err-no-mem
  :af-err-driver
  :af-err-runtime
  :af-err-invalid-array
  :af-err-arg
  :af-err-size
  :af-err-type
  :af-err-diff-type
  :af-err-batch
  :af-err-device
  :af-err-not-supported
  :af-err-not-configured
  :af-err-nonfree
  :af-err-no-dbl
  :af-err-no-gfx
  :af-err-load-lib
  :af-err-load-sym
  :af-err-arr-bknd-mismatch
  :af-err-internal
  :af-err-unknown )



(defcfun "af_create_array" af-err
  (arr af-array)
  (data :pointer)
  (ndims :unsigned-int)
  (dims dim-t)
  (type af-dtype))

;(let ((arr))
;  (af-create-array arr 0 1 1 :b8))
