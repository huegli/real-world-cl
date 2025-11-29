(defstruct point-3d
  (x 0.0 :type single-float)
  (y 0.0 :type single-float)
  (z 0.0 :type single-float))

(defun distance (a b)
  "Calculate the distance between points a and b"
  (cond
    ((not (point-3d-p a)) nil)
    ((not (point-3d-p b)) nil)
    (t (sqrt (+ (expt (- (point-3d-x b) (point-3d-x a)) 2)
                (expt (- (point-3d-y b) (point-3d-y a)) 2)
                (expt (- (point-3d-z b) (point-3d-z a)) 2))))))

(defparameter *a* (make-point-3d))
(defparameter *b* (make-point-3d :x 1.0 :y 1.0 :z 4.0))

(format t "Distance between ~a and ~a is ~a~%"
        *a* *b* (distance *a* *b*))
