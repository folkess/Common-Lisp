(defparameter *heroes*
	'((superman (Clark Kent))
	(Flash (Barry Allen))
	(Batman (Bruce Wayne))))
;;; get data
(format t "Superman Data ~a ~%" (assoc 'superman *heroes*))
;;; get just first element after data
(format t "Superman is ~a ~%" (cadr(assoc 'superman *heroes*)))

(terpri) ;; new line

;;; get data flash 
(format t "Flash Data ~a ~%" (assoc 'Flash *heroes*))
;;; get just first element after data
(format t "Flash is ~a ~%" (cadr(assoc 'Flash *heroes*)))

(defparameter *hero-size*
	`((Superman (6 ft 3 in) (230 lbs))
	(Flash (6 ft 0in) (190 lbs))
	(Batman (6 ft 2 in) (210 lbs))))

(format t "Superman is ~a ~%" (cadr (assoc 'Superman *hero-size*)))


