(defun intersection-set (list1 list2)
  (mapcar (lambda (x) (when (member x list1 :test #'equal) x)) list2))


(setq set-A '(1 2 (3 10) 4 5))
(setq set-B '(3 4 5 6 7 (3 10) 10))

(setq result (intersection-set set-A set-B))
(setq result (remove-if #'null result))
(format t "Element that belong to A and also belong B are : ~%~a" result)