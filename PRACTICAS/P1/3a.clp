(defrule CambioConPalmada
        (Habitacion ?Hab)
        ?Borrar2 <- (valor_registrado ?tiempo1 palmada ?Hab ?)
        ?Borrar1 <- (valor_registrado ?tiempo2&:(< (- ?tiempo2 ?tiempo1) 3) palmada ?Hab ?)
=>
        (assert (accion pulsador_luz ?Hab cambiar))
        (retract ?Borrar1)
        (retract ?Borrar2)
)

(defrule NoCambioConPalmada
        (Habitacion ?Hab)
        ?Borrar2 <- (valor_registrado ?tiempo1 palmada ?Hab ?)
        ?Borrar1 <- (valor_registrado ?tiempo2&:(>= (- ?tiempo2 ?tiempo1) 3) palmada ?Hab ?)
=>
        (retract ?Borrar1)
        (retract ?Borrar2)
)