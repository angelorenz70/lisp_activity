(defun twistf (x)
    (if (null (cdr x))
        (car x)
        (twistf (cdr x))
    )
)
(defun removeLast (lst)
  (if (null lst)
      nil 
      (if (null (cdr lst))
          nil 
          (cons (car lst) (removeLast (cdr lst))))))

(setq lst '(1 2 3 4 5))
(format t "Original list: ~%")
(write lst)
(terpri)

(format t "Twisted: ")
(setq lastEl (twistf lst))
(setq newLst (removeLast lst))
(setq newLst (cons lastEl newLst))
(write newLst)