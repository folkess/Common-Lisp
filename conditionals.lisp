(defvar *age* 18)

(format t "If you're 18 ")
(if (= *age* 18)
	(format t "You can vote~%")
	(format t "You can't vote~%"))
(format t "If you're not 18 ")
(if (not (= *age* 18))
	(format t "You can vote~%")
	(format t "You can't vote~%"))
	
;;; logical operators : and, or, not

