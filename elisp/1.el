(require 'dash)

(--reduce
  (+ acc it)
  (-map
    (lambda (n)
      (if ( or
  	    (= (mod n 3) 0)
  	    (= (mod n 5) 0))
	    n
    0))
    (--iterate (+ it 1) 1 999)))
