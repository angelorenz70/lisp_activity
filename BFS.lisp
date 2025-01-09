(defun bfs (graph start)
  (let ((visited '())
        (queue (list start)))
    (labels ((enqueue (element queue)
               (append queue (list element)))
             (dequeue (queue)
               (values (first queue) (rest queue)))
             (not-visited-p (node)
               (not (member node visited))))
      (loop while queue do
            (multiple-value-bind (current-node rest-queue)
                (dequeue queue)
              (if (not-visited-p current-node)
                  (progn
                    (setq visited (append visited (list current-node)))
                    (format t "~a " current-node)
                    (setq queue (enqueue
                                 current-node
                                 (append rest-queue
                                         (get-neighbors current-node graph)))))
                  (setq queue rest-queue)))))))

(defun get-neighbors (node graph)
  (if (assoc node graph)
      (cdr (assoc node graph))
      '()))


(setq graph '(      (A . (B C))
                    (B . (A D E))
                    (C . (A F))
                    (D . (B))
                    (E . (B F))
                    (F . (C E))))









                    
(format t "BFS starting from node B: ")
(bfs graph 'B)
