(defvar *age* 18)
(defvar *num-3* 5)

(defun get-school (age)
	(case age
		(5 (print "Kindergarten"))
		(6 (print "First Grade"))
		(otherwise (print "middle school"))))

(get-school *age*)

(terpri) ;;; defines new line here

;;; when conditional, true if equivalent 

;;;[1] 
(when (= *age* 18)
	(setf *num-3* 18)
	(format t "Go to college you're ~d ~%" *num-3*))
;;; this is equivalent to [1]
(unless (not(= *age* 18))
	(setf *num-3* 18)
	(format t "Go to college you're ~d ~%" *num-3*))
