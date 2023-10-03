(defun rev (x)
  (if (null x)
      '()
      (append (rev (cdr x)) (list (car x)))))

(defun palindromef (lst)
  (if (equal lst (rev lst))
      t
      nil))

(write (palindromef '(1 2 3 3 2 1)))