(defun custom-complement (list1 list2)
  (mapcar (lambda (x) (when (not(member x list2 :test #'equal)) x)) list1))

(setq set-A '(1 2 (3 10) 4 5))
(setq set-B '(3 4 5 6 7 (3 10) 10))

(setq result (custom-complement set-A set-B))
(setq result (remove-if #'null result))
(format t "Elements that belong to A but not belong to B are : ~%~a" result)