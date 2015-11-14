(defparameter *hero-size*
	'((Superman (6 ft 3 in) (230 lbs))
	(Flash (6 ft 0in) (190 lbs))
	(Batman (6 ft 2 in) (210 lbs))))
	
;(defun get-hero-data (size)
	;(format t "~a ~%"
	;'(,(caar size) is ,(cadar size) and ,(cddar size))))
	

;(get-hero-data *hero-size*)

(format t "A number ~a ~%" (mapcar #'numberp '(1 2 3 f g)))

;(flet ((func-name (arguments)
;	function Body ))
;		body))

(flet ((double-it (num)
	(* num 2))
	(triple-it (num)
	(* num 3)))
	(format t "Double & Triple 10 = ~d~%" (triple-it(double-it 10))))
	
(labels ((double-it (num)
		(* num 2))
		(triple-it (num)
		(* (double-it num) 3)))
		(format t "Double & Triple 2 = ~d~%" (triple-it 3)))
