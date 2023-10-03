(defun flattenf (lst)
  (cond
    ((null lst) '())               ; If the list is empty, return an empty list.
    ((atom (car lst))              ; If the first element is an atom (not a list), keep it and recurse.
     (cons (car lst) (flattenf (cdr lst))))
    (t                            ; If the first element is a list, flatten it and concatenate it with the flattened rest.
     (append (flattenf (car lst)) (flattenf (cdr lst))))))

(setq nested-list '((1 2 3) (a b (c d))))
(setq flat-list (flattenf nested-list))
