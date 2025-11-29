(defparameter *debug-mode* nil)

;;; LLM-QUESTION: How do I define the proper type for *log-level*?
(defparameter *log-level* :error) 

;;; LLM-QUESTION: Do I use defparameter or defvar?
(defparameter +max-retries+ 3)

(defun test-special ()
  (let ((*debug-mode* t))
    (format t "*debug-mode* is ~a~%" *debug-mode*)
    (format t "*log-level* is ~a~%" *log-level*)
    (format t "+max-retries+ is ~a~%" +max-retries+)))

