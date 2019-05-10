;;; 1 b)

(defrule cuentaSiemprePrimero
    (XXX $?x)
    (not (NumeroHechos XXX ?n))
    (not (copiaXXX $?x))
=>
    (assert (copiaXXX $?x))
    (assert (NumeroHechos XXX 1))
)

(defrule cuentaSiempre
    ?borrar <- (NumeroHechos XXX ?n)
    (XXX $?x)
    (not (copiaXXX $?x))
=>
    (assert (copiaXXX $?x))
    (assert (NumeroHechos XXX (+ ?n 1)))
    (retract ?borrar)
)