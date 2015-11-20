(setq *print-case* :capitalize)

;;; lists
;;; held in cells or con cells
(+ 5 4)

;;; change / define variable names
(defvar *number* 0)
(setf *number* 6)

;;; [+] [5] [4] [nil] : last cell is always nil means false or 0

;;; commas signify precision

(format t "Number with commas ~:d" 10000000)

(format t "PI to 5 characters ~5f ~%" 3.141593)

(format t "PI to 4 decimals ~,4f ~%" 3.141593)

(format t "10 Percent ~,,2f ~%" .10)

(format t "10 Dollars ~$ ~%" 10)
