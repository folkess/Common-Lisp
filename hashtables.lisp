(defparameter people (make-hash-table))

(setf (gethash '102 people) '(Paul Smith))
(setf (gethash '103 people) '(Sam Smith))

(format t "~a ~%" (gethash '102 people))

(maphash #'(lambda (k v) (format t "~a = ~a ~%" k v)) people)

(remhash '103 people)

