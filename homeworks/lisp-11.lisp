(defun map-range (func start end)
  (let ((s (if (< start end) start (1+ end)))
	(e (if (< start end) end (1+ start)))
	(results nil))
    (do ((i s (1+ i)))
	((>= i e))
      (push (funcall func i) results))
    (if (> start end)
	results
	(reverse results))))
