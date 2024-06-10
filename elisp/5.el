(require 'dash)

(defun task5 (n)
  (setq factors '())
  (setq divider 2)
  (while (> n 1)
    (while (= (% n divider) 0)
      (progn
	(push divider factors)
	(setq n (/ n divider))))
    (setq divider (+ divider 1)))
  (--reduce (max acc it) factors))


(task5 600851475143)
