(defstruct point-3d
  (x 0.0s0 :type single-float)
  (y 0.0s0 :type single-float)
  (z 0.0s0 :type single-float))

(defun distance (a b)
  "Calculate the Euclidean distance between two point-3d structures."
  (check-type a point-3d)
  (check-type b point-3d)
  (with-slots ((x1 x) (y1 y) (z1 z)) a
    (with-slots ((x2 x) (y2 y) (z2 z)) b
      (sqrt (+ (expt (- x2 x1) 2)
               (expt (- y2 y1) 2)
               (expt (- z2 z1) 2))))))

(defparameter *a* (make-point-3d))
(defparameter *b* (make-point-3d :x 1.0s0 :y 1.0s0 :z 4.0s0))

(format t "Distance between ~a and ~a is ~a~%"
        *a* *b* (distance *a* *b*))
