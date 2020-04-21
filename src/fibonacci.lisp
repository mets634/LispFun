(defpackage fibonacci
  (:use :cl)
  (:export :fibonacci-rec :main))
(in-package :fibonacci)

(declaim (ftype (function (fixnum) fixnum) fibonacci-rec))
(defun fibonacci-rec (n)
  "calculates fibonacci using recursion definition f(n) = f(n-1) + f(n-2)"
  
  (if (< n 2)
      n
      (+ (fibonacci-rec (- n 2)) (fibonacci-rec (- n 1)))))

(defun main ()
  (print (fibonacci-rec (parse-integer (read-line)))))
