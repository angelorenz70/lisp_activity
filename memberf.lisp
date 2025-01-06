(defun memberf (x lst)
  (if (null lst) 
      nil
      (if (equal x (car lst)) 
          "True" 
          (memberf x (cdr lst))))) 

(setq value 3 )
(setq lst '(1 2 3 4 5))
(write (memberf value lst))
