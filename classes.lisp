(defclass animal()
	(name
	sound))
	
(defparameter *dog* (make-instance 'animal))

(setf (slot-value *dog* 'name) "Spot")
(setf (slot-value *dog* 'sound) "Woof")

(format t "~a says ~a~%"
	(slot-value *dog* 'name)
	(slot-value *dog* 'sound))
	
(defclass mammal ()
	((name
		:initarg :name
		:initform (error "Must Provide a name"))
	(sound
		:initarg :sound
		:initform "No Sound"
		;;; accessor, setter, reader
		:accessor mammal-sound
		)))

(defparameter *king-kong*
	(make-instance 'mammal :name "King Kong" :sound "Rawwr")
	)
	
	(format t "~a says ~a ~%"
		(slot-value *king-kong* 'name)
		(slot-value *king-kong* 'sound))
		
(defparameter *fluffy* 
	(make-instance 'mammal :name "Pikachu" :sound "Pika!"))
	
	(format t "~d says ~d~%" 
		(slot-value *fluffy* 'name)
		(slot-value *fluffy* 'sound))
		
(defgeneric make-sound (mammal))

(defmethod make-sound ((the-mammal mammal))
	(format t "~a says ~a ~%"
	(slot-value the-mammal 'name)
	(slot-value the-mammal 'sound)))

(make-sound *king-kong*)
(make-sound *fluffy*)

(defgeneric (setf mammal-name) (value the-mammal))

(defmethod (setf mammal-name) (value (the-mammal mammal))
	(setf (slot-value the-mammal 'name) value))
	
(defgeneric mammal-name (the-mammal))

(defmethod mammal-name ((the-mammal mammal))
	(slot-value the-mammal 'name))
	
(setf (mammal-name *king-kong*) "kong")

(format t "I am~a ~%" (mammal-name *king-kong*))

(setf (mammal-sound *king-kong*) "Rawwwwwwr")
(format t "I am~a ~%" (mammal-sound *king-kong*))

;;;; inheritance - lisp
;;;; inherit Multiple Classes - Just Separate the class names w/ commas in the paraentheses

;;;; dog is subclass
;;;; superclass type mammal 
(defclass dog (mammal) ())

(defparameter *rover*
	(make-instance 'dog :name "Rover" :sound "Woof"))

(make-sound *rover*)
	

	