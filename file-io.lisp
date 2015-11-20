(with-open-file (my-stream
				"test00a4a45.txt"
				:direction :output
				:if-exists :supersede)
			(princ "Some Random Texts" my-stream))

(let ((in (open "test.txt" :if-does-not-exist nil)))
	(when in
		(loop for line = (read-line in nil)
		while line do (format t "~d~%" line))
		(close in)
		))