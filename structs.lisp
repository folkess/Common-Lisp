(defstruct customer name address id)

(setq paulsmith (make-customer
	:name "Paul Smith"
	:address "123 Main"
	:id 1000))

(format t "~a ~%" (customer-name paulsmith))
(setf (customer-address paulsmith) "125 Main")

(write paulsmith)

(setq sally-smith-1001 (make-customer
	:name "Sally Smith"
	:address "126 main"
	:id 1006
	))
