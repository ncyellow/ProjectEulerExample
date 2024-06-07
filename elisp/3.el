(defun task3()
  (setq sequence (--iterate (+ it 1) 1 100))
  ( -
    (expt  (--reduce (+ acc it) sequence) 2)
    (--reduce (+ acc (* it it)) sequence)))
