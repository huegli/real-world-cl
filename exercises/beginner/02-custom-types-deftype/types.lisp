(deftype percentage () '(integer 0 100))

(deftype rgb-component () '(integer 0 255))

(declaim (ftype (function
                 (rgb-component
                  rgb-component
                  rgb-component) list) make-color))
(defun make-color (r g b)
  (list r g b))


(format t "Here is a color: ~a~%" (make-color 20 30 40))

;;; LLM-QUESTION: I expected this to produce an error, why doesn't it?
;;; LLM-ANSWER: In Common Lisp, `declaim ftype` declarations are hints to the
;;; compiler for optimization, not runtime type checks. The compiler trusts your
;;; promise that the types will be correct. To get actual runtime checking, use
;;; `check-type` inside the function body, e.g.: (check-type r rgb-component)
(format t "This should error out: ~a~%" (make-color 256 1000 10000))
