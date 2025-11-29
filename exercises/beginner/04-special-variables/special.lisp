(defparameter *debug-mode* nil)

;;; LLM-QUESTION: How do I define the proper type for *log-level*?
;;; LLM-ANSWER: Use DEFTYPE with MEMBER type specifier, then DECLAIM the type:
;;;   (deftype log-level () '(member :error :warn :info :debug))
;;;   (declaim (type log-level *log-level*))
(defparameter *log-level* :error) 

;;; LLM-QUESTION: Do I use defparameter or defvar?
;;; LLM-ANSWER: Neither! Use DEFCONSTANT for true constants with +plus+ naming:
;;;   (defconstant +max-retries+ 3)
;;; DEFCONSTANT is for immutable atomic values. DEFPARAMETER resets on reload,
;;; DEFVAR preserves value across reloads - both are for special *earmuff* variables.
(defparameter +max-retries+ 3)

(defun test-special ()
  (let ((*debug-mode* t))
    (format t "*debug-mode* is ~a~%" *debug-mode*)
    (format t "*log-level* is ~a~%" *log-level*)
    (format t "+max-retries+ is ~a~%" +max-retries+)))

