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
(format t "This should error out: ~a~%" (make-color 256 1000 10000))
