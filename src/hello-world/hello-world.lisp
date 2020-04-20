(defpackage hello-world
  (:use :cl)
  (:export :print-hello-world))
(in-package :hello-world)

(defun print-hello-world ()
  (format t "Hello World!"))
