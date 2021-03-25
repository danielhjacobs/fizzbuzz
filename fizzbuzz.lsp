(defvar dict (pairlis '(3 5) '("Fizz" "Buzz")))
(defvar output "")
(loop for i from 1 to 100
      do 
      (setf output "")
      (loop for pair in dict
            do (if (eq (mod i (car pair)) 0) (setf output (cdr pair))))
            (if (string-equal output "") (setf output i))
      (format t "~d~%" output)
)