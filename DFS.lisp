(defun dfs (graph start)
  (let ((visited '())
        (stack (list start)))
    (labels ((push (element stack)
               (cons element stack))
             (pop (stack)
               (values (first stack) (rest stack)))
             (not-visited-p (node)
               (not (member node visited))))
      (loop while stack do
            (multiple-value-bind (current-node rest-stack)
                (pop stack)
              (if (not-visited-p current-node)
                  (progn
                    (setq visited (append visited (list current-node)))
                    (format t "~a " current-node)
                    (setq stack (push
                                 current-node
                                 (append rest-stack
                                         (get-neighbors current-node graph)))))
                  (setq stack rest-stack)))))))

(defun get-neighbors (node graph)
  (if (assoc node graph)
      (cdr (assoc node graph))
      '()))

(setq graph '((A . (B C))
                       (B . (A D E))
                       (C . (A F))
                       (D . (B))
                       (E . (B F))
                       (F . (C E))))
(format t "BFS starting from node B: ")
(dfs graph 'B)
