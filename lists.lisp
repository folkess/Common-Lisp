(cons 'superman 'batman)

(list 'superman 'batman 'flash)

(cons 'aquaman '(superman batman))

(format t "First = ~a ~%" (car '(superman batman aquaman)))
(format t "Everything Else = ~a ~%" (cdr '(superman batman aquaman)))

;;; traversing through lists
;;; grabs everything else first then grabs first item from list, which is batman
(format t "2nd Item = ~a ~%" (cadr '(superman batman aquaman flash joker)))
(format t "Fourth Item = ~a ~%" (cadddr '(superman batman aquaman flash joker)))

;;; conditionals to check if it is a list
(format t "Is it a list = ~a ~%" (listp '(batman superman)))

;;; conditionals to check if it is a list
(format t "Is 3 in  list = ~a ~%" (if (member 3 '(2 4 6)) 't nil ))

;;; join / append lists
(append '(just) '(some) '(random words))

(defparameter *nums* '(2 4 6))
(push 1 *nums*)

;;; grab nth item
(format t "2nd Item in list ~a ~%" (nth 2 *nums*))

(defvar superman (list :name "Superman" :secret-id "Clark Kent"))

(defvar *hero-list* nil)

(push superman *hero-list*)

(dolist (hero *hero-list*)
	(format t "~{~a : ~a ~}~%" hero))

 

