;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
;;; 1 a)
(defrule cuentaHecho
    ?borrar <- (ContarHechos ?tipo)
    (not (exists(NumeroHechos ?tipo ?n)))
=>
    (retract ?borrar)
    (assert (NumeroHechos ?tipo (length$ (find-all-facts((?t ?tipo)) TRUE))))
)

(defrule cuentaHecho2
    ?borrar1 <- (ContarHechos ?tipo)
    ?borrar <- (NumeroHechos ?tipo ?n)
=>
    (retract ?borrar)
    (retract ?borrar1)
    (assert (NumeroHechos ?tipo (length$ (find-all-facts((?t ?tipo)) TRUE))))
)
