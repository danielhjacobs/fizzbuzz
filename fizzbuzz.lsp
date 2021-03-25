(defvar dict (pairlis '(3 5) '("Fizz" "Buzz")))
(defvar output "")
(sort dict (lambda (a b) (< (car a) (car b))))
(loop for i from 1 to 100
      do 
      (setf output "")
      (loop for pair in dict
            do (if (eq (mod i (car pair)) 0) (setf output (concatenate 'string output (cdr pair))))
      )
      (if (equal "" output) (setf output i))
      (format t "~d~%" output)
)