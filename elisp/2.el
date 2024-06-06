(setq sources '(1 .  2))
(setq result 0)
(setq last 0)
(while ( < last 4000000)
  (progn
    (setq first (car sources))
    (setq second (cdr sources))
    (if (= (mod second 2) 0)
	(setq result (+ result second)))
    (setq last (+ first second))
    (setq sources (cons second last))))

(print result)
