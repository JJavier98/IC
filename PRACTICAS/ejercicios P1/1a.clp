(defrule cuentaHecho ; empezamos a contar hechos por primera vez
    ?borrar <- (ContarHechos ?tipo) ; existe el hecho que inicia la cuenta
    (not (exists(NumeroHechos ?tipo ?n))) ; no existe, todavía, el hecho que lleva la cuenta
=>
    (retract ?borrar) ; borramos el hecho que inicia la cuenta
    (assert (NumeroHechos ?tipo (length$ (find-all-facts((?t ?tipo)) TRUE)))) ; creamos el hecho que lleva la cuenta
)

(defrule cuentaHecho2 ; empezamos a contar hechos cuando ya ha habido una cuenta anterior
    ?borrar1 <- (ContarHechos ?tipo) ; existe el hecho que nos pide contar
    ?borrar <- (NumeroHechos ?tipo ?n) ; existe una cuenta previa
=>
    (retract ?borrar) ; borramos los dos hechos
    (retract ?borrar1)
    (assert (NumeroHechos ?tipo (length$ (find-all-facts((?t ?tipo)) TRUE)))) ; actualizamos la cuenta
)
