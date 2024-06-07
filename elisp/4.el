(require 'dash)

(defun task4()
  (setq dividers (--iterate (+ it 1) 1 20))
  (setq no-stop t)
  (setq val 20)
  (while no-stop
    (if (--all? (= (% val it ) 0) dividers)
	(setq no-stop nil)
      (setq val (+ val 20))))
  val)
