(defun hello()
	(print "Hello")
	 (terpri))
(hello)

(defun get-avg (num-1 num-2)
	(/ (+ num-1 num-2) 2))

(format t "Avg 10 & 50 = ~a ~%" (get-avg 10 50))

(defun print-list (w x &optional y z)
	(format t "List = ~a ~%" (list w x y z)))
;;; only passed 3 arguments, last value defaulted to nil
(print-list 1 2 3)

(defvar *total* 0)
;;; &rest will accept as many values and pass into num 
;;; creates a temporary list
	(defun sum (&rest nums)
		(dolist (num nums)
			(setf *total* (+ *total* num)))
				(format t "Sum = ~a ~%" *total*))
	
(sum 1 2 3 4 5 6 7)

(defun print-list(&optional &key x y z)
	(format t "List: ~a ~%" (list x y z))
	)
	
	(print-list :x 1 :y 2)
	
(defun difference (num1 num2)
	(return-from difference(- num1 num2)))

(format t "10 - 2 = ~a ~%" (difference 10 2))
