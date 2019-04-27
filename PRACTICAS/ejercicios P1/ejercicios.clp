;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
;;; 1 a)
(defrule cuentaHecho
    (not (NumeroHechos ?tipo))
    ?borrar <- (ContarHechos ?tipo)
=>
    (retract ?borrar)
    (assert (NumeroHechos ?tipo (length$ (find-all-facts ((?t ?tipo)) TRUE))))
)

(defrule cuentaHecho
    ?borrar <- (NumeroHechos ?t ?n)
    ?borrar1 <- (ContarHechos ?tipo)
=>
    (retract ?borrar)
    (retract ?borrar1)
    (assert (NumeroHechos ?tipo (length$ (find-all-facts ((?t ?tipo)) TRUE))))
)

;;; 1 b)

(defrule cuentaSiemprePrimero
    (not (NumeroHechos ?hecho ?n))
    (?hecho $?x)
    (not (copia ?hecho ?x))
=>
    (assert (copia ?hecho))
    (assert (NumeroHechos ?hecho (+ ?n 1)))
)

(defrule cuentaSiempre
    ?borrar <- (NumeroHechos ?hecho ?n)
    (?hecho $?x)
    (not (copia ?hecho ?x))
=>
    (assert (copia ?hecho))
    (assert (NumeroHechos ?hecho (+ ?n 1)))
    (retract ?borrar)
)