(defun rev (x)
  (if (null x)
      '()
      (append (rev (cdr x)) (list (car x)))))
 
(write (rev '(1 2 3 4 5)))