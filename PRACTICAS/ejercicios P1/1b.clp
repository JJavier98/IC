(defrule cuentaSiemprePrimero ; contamos cuando todavía no hay registro
    (XXX $?x) ; existe el hecho
    (not (NumeroHechos XXX ?n)) ; no hay registro del número de hechos
    (not (copiaXXX $?x)) ; el hecho no tiene copia
=>
    (assert (copiaXXX $?x)) ; hacemos la copia
    (assert (NumeroHechos XXX 1)) ; iniciamos a uno la cuenta
)

(defrule cuentaSiempre ; contamos una vez ya existe un registro
    ?borrar <- (NumeroHechos XXX ?n) ; existe el regitro anterior
    (XXX $?x) ; existe un hecho
    (not (copiaXXX $?x)) ; el hecho no tiene copia
=>
    (assert (copiaXXX $?x)) ; incluimos la copia
    (assert (NumeroHechos XXX (+ ?n 1))) ; aumentamos en uno el número de hechos
    (retract ?borrar) ; borramos el anterior
)