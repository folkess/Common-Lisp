(defvar *num* 2)
(defvar *num-2* 2)
(defvar *num-3* 2)

(if (= *num* 2)
	(progn
		(setf *num-2* (* *num-2* 2))
		(setf *num-3* (* *num-3* 3))
	)
	(format t "Number is not equal to 2.~%"))
	
(format t "*num-2* = ~d ~%" *num-2*)
(format t "*num-3* = ~d ~%" *num-3*)

;;;; progn means that you can nest statements inside if or else. 

