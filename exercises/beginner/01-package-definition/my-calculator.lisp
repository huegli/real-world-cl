(defpackage :my-calculator
  (:use :cl)
  (:import-from :cl #:floor #:ceiling)
  (:export #:add #:subtract #:multiply #:divide))

(in-package :my-calculator)

(defun add (a b)
  (+ a b))

(defun subtract (a b)
  (- a b))

(defun multiply (a b)
  (* a b))

(defun divide (a b)
  (/ a b))
