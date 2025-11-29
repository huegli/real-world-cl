;;; Configuration types
(deftype log-level ()
  "Valid log levels for the application."
  '(member :error :warn :info :debug))

;;; Special variables
(defparameter *debug-mode* nil
  "When non-nil, enables verbose debug output.")

;;; LLM-QUESTION: How do I define the proper type for *log-level*?
;;; LLM-ANSWER: Use DEFTYPE with MEMBER type specifier, then DECLAIM the type:
;;;   (deftype log-level () '(member :error :warn :info :debug))
;;;   (declaim (type log-level *log-level*))
(declaim (type log-level *log-level*))
(defparameter *log-level* :error
  "Current logging level. One of :error, :warn, :info, :debug.")

;;; LLM-QUESTION: Do I use defparameter or defvar?
;;; LLM-ANSWER: Neither! Use DEFCONSTANT for true constants with +plus+ naming:
;;;   (defconstant +max-retries+ 3)
;;; DEFCONSTANT is for immutable atomic values. DEFPARAMETER resets on reload,
;;; DEFVAR preserves value across reloads - both are for special *earmuff* variables.
(defconstant +max-retries+ 3
  "Maximum number of retry attempts.")

;;; Demonstration function
(defun test-special ()
  "Demonstrate special variable binding and access."
  (format t "Default *debug-mode*: ~a~%" *debug-mode*)
  (let ((*debug-mode* t))
    (format t "Inside LET, *debug-mode*: ~a~%" *debug-mode*)
    (format t "*log-level*: ~a~%" *log-level*)
    (format t "+max-retries+: ~a~%" +max-retries+))
  (format t "After LET, *debug-mode*: ~a~%" *debug-mode*))
