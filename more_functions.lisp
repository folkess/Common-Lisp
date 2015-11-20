(defun squares (num)
	(values (expt num 2) (expt num 3)))
	
(multiple-value-bind (a b) (squares 2)
	(format t "2^2 = ~d 2^3 = ~d~%" a b))
	
(defun times-3 (x) (* 3 x))
(defun times-4 (x) (* 4 x))

;;; higher order functions
(defun multiples (mult-func max-num)
	(dotimes (x max-num)
	(format t "~d : ~d ~%" x (funcall mult-func x))))
	
(multiples #'times-3 10)
(multiples #'times-4 10)
