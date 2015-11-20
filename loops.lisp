;;;(loop for x from 1 to 10
	;;;do(print x)) 
	
(setq x 1)

(loop 
	(format t "~d ~%" x)
	(setq x (+ x 1))
	(when (> x 10) (return x)))

(terpri) ;;; new line break

;;; loop through a list
(loop for x in '(Peter Paul Mary) do
	(format t "~s ~%" x))

(dotimes (y 12)
	(print y))