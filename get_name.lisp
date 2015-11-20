(print "What's your name?")

(defvar *name* (read))

(defun hello-you (*name*))
	(format t "Hello ~a! ~%" name)
)

;;; ~a : Shows the value
;;; ~s : Shows quotes around the value
;;; ~10a : Adds 10 spaces for the value w/ extra spacing to the right
;;; ~10@a : Adds 10 spaces for the value w/  extra space to the left
;;; *globalVariable* : global variable  

(setq *print-case* :capitalize)

(hello-you name)
