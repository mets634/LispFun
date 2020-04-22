(defpackage fibonacci
  (:use :cl)
  (:export :fibonacci-rec :fibonacci-closure :main))
(in-package :fibonacci)

(declaim (ftype (function (fixnum) fixnum) fibonacci-rec))
(defun fibonacci-rec (n)
  "calculates fibonacci using recursion definition f(n) = f(n-1) + f(n-2)"
  
  (if (< n 2)
      n
      (+ (fibonacci-rec (- n 2)) (fibonacci-rec (- n 1)))))


(defun make-fibonacci ()
  (let ((curr 0) (next 1) temp)
    (lambda ()
      (setf temp next)
      (setf next (+ curr next))
      (setf curr temp))))

(declaim (ftype (function (fixnum) list) fibonacci-closure))
(defun fibonacci-closure (n)
  (let ((fib-gen (make-fibonacci)))
    (loop repeat n collect (funcall fib-gen))))

(declaim (ftype (function (fixnum) fixnum) fibonacci-loop))
(defun fibonacci-loop (n)
  (do ((i 0 (1+ i))
       (curr 0 next)
       (next 1 (+ curr next)))
      ((< n i) curr)))


(defun main (argv)
  (print (fibonacci-rec (parse-integer (read-line)))))
