(defrule EncenderLuzInteligente
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultimo_registro movimiento ?Hab ?time1)
    (valor_registrado ?time1 movimiento ?Hab on)
    (ultimo_registro estado_luz ?Hab ?time2)
    (valor_registrado ?time2 estado_luz ?Hab off)
    (ultimo_registro luminosidad ?Hab ?time3)
    (valor_registrado ?time3 luminonsidad ?Hab ?lux)
    (luminosidad_minima ?Hab ?lux2)
    (<= ?lux ?lux2)
=>
    (assert (accion pulsador_luz ?Hab encender))
)

(defrule ApagarLuzInteligentePorLuminosidad
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultimo_registro estado_luz ?Hab ?time2)
    (valor_registrado ?time2 estado_luz ?Hab on)
    (ultimo_registro luminosidad ?Hab ?time3)
    (valor_registrado ?time3 luminonsidad ?Hab ?lux)
    (luminosidad_maxima ?Hab ?lux2)
    (>= ?lux ?lux2)
=>
    (assert (accion pulsador_luz ?Hab apagar))
)

(defrule ApagarLuzInteligentePorLuminosidad
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    ?Borrar <- (aux_apaga ?Hab ?t ?t2)
    (ultimo_registro estado_luz ?Hab ?time2)
    (valor_registrado ?time2 estado_luz ?Hab on)
    (ultimo_registro luminosidad ?Hab ?time3)
    (valor_registrado ?time3 luminonsidad ?Hab ?lux)
    (luminosidad_maxima ?Hab ?lux2)
    (>= ?lux ?lux2)
=>
    (retract ?Borrar)
    (assert (accion pulsador_luz ?Hab apagar))
)

(defrule PreApagarLuzInteligente
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultimo_registro estado_luz ?Hab ?time2)
    (valor_registrado ?time2 estado_luz ?Hab on)
    (ultimo_registro movimiento ?Hab ?time)
    (valor_registrado ?time movimiento ?Hab off)
=>
    (bind ?Tiempo (totalsegundos (horasistema) (minutossistema) (segundossistema)) )
    (assert (aux_apaga ?Hab ?time ?Tiempo))
)

(defrule ApagarLuzInteligente
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    ?Borrar <- (aux_apaga ?Hab ?time ?Tiempo)
=>
    (if(< (- ?Tiempo ?time) 10)
    then
    (bind ?Tiempo (totalsegundos (horasistema) (minutossistema) (segundossistema)) )
    (assert(aux_apaga ?Hab ?time ?Tiempo))
    (retract ?Borrar)
    else
    (assert (accion pulsador_luz ?Hab apagar))
    (retract ?Borrar)
    )
)

(defrule SeHaIdoAColindante
    ?Borrar <- (aux_apaga ?Hab ?time ?Tiempo)
    (Habitacion ?Hab)
    (Habitacion ?Hab1)
    (Manejo_inteligente_luces ?Hab)
    (posible_pasar ?Hab ?Hab1)
    (ultimo_registro movimiento ?Hab1 ?Tiempo1)
    (valor_registrado ?Tiempo1 movimiento ?Hab1 on)
    (> ?Tiempo1 ?Tiempo)
=>
    (if(<= (- ?Tiempo1 ?Tiempo) 3)
        then
        (assert (accion pulsador_luz ?Hab apagar))
        (retract ?Borrar)
    )
)