(defun palindrome-p (num)
  (setq n num)
  (setq rev 0)
  (while (> num 0)
    (setq rev (+ (* rev 10) (% num 10)))
    (setq num (/ num 10)))
  (= n rev))


(defun task6(min max)
  (setq index-i max)
  (setq index-j max)
  (setq max-val -1)

  (while (> index-i min)
    
    (if (< max-val (* index-i max))
	(while (> index-j min)
	  (progn
	    (setq prod (* index-i index-j))
	    (if (and (< max-val prod) (palindrome-p prod))
		(setq max-val prod)))
	  (setq index-j (- index-j 1))))
    (setq index-i (- index-i 1)))
  max-val)

(task6 9 99)
