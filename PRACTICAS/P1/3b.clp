;(defrule EncenderLuzInteligente
;    (Habitacion ?Hab)
;    (Manejo_inteligente_luces ?Hab)
;    (ultimo_registro movimiento ?Hab ?time1)
;    (valor_registrado ?time1 movimiento ?Hab on)
;    (ultimo_registro estadoluz ?Hab ?time2)
;    (valor_registrado ?time2 estadoluz ?Hab off)
;    (ultimo_registro luminosidad ?Hab ?time3)
;    (valor_registrado ?time3 luminosidad ?Hab ?lux)
;    (luminosidad_minima ?Hab ?lux2)
;    (<= ?lux ?lux2)
;=>
;    (assert (accion pulsador_luz ?Hab encender))
;)

(defrule EncenderLuzInteligente
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultima_activacion movimiento ?Hab ?time1)
    (ultima_desactivacion movimiento ?Hab ?time&:(>= ?time1 ?time))
    (ultima_desactivacion estadoluz ?Hab ?time2)
    (ultima_activacion estadoluz ?Hab ?tim&:(>= ?time2 ?tim))
    (ultimo_registro luminosidad ?Hab ?time3)
    (valor_registrado ?time3 luminosidad ?Hab ?lux)
    (luminosidad_minima ?Hab ?lux2&:(<= ?lux ?lux2))
=>
    (assert (accion pulsador_luz ?Hab encender))
)

(defrule ApagarLuzInteligentePorLuminosidad
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultima_activacion estadoluz ?Hab ?time2)
    (ultima_desactivacion estadoluz ?Hab ?tim&:(>= ?time2 ?tim))
    (ultimo_registro luminosidad ?Hab ?time3)
    (valor_registrado ?time3 luminosidad ?Hab ?lux)
    (luminosidad_maxima ?Hab ?lux2&:(>= ?lux ?lux2))
=>
    (assert (accion pulsador_luz ?Hab apagar))
)

(defrule ApagarLuzInteligentePorLuminosidad2
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    ?Borrar <- (aux_apaga ?Hab ?t ?t2)
    (ultima_activacion estadoluz ?Hab ?time2)
    (ultima_desactivacion estadoluz ?Hab ?tim&:(>= ?time2 ?tim))
    (ultimo_registro luminosidad ?Hab ?time3)
    (valor_registrado ?time3 luminosidad ?Hab ?lux)
    (luminosidad_maxima ?Hab ?lux2&:(>= ?lux ?lux2))
=>
    (retract ?Borrar)
    (assert (accion pulsador_luz ?Hab apagar))
)

(defrule PreApagarLuzInteligente
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultima_activacion estadoluz ?Hab ?time2)
    (ultima_desactivacion estadoluz ?Hab ?tim&:(>= ?time2 ?tim))
    (ultima_desactivacion movimiento ?Hab ?time1)
    (ultima_activacion movimiento ?Hab ?time&:(>= ?time1 ?time))
=>
    (bind ?Tiempo (totalsegundos (horasistema) (minutossistema) (segundossistema)) )
    (assert (aux_apaga ?Hab ?time1 ?Tiempo))
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
<<<<<<< HEAD
    (ultimo_registro movimiento ?Hab1 ?Tiempo1)
    (valor_registrado ?Tiempo1 movimiento ?Hab1 on)
    (> ?Tiempo1 ?time)
=======
    (ultima_activacion estadoluz ?Hab ?time2)
    (ultima_desactivacion estadoluz ?Hab ?tim&:(>= ?time2 ?tim))
    (> ?Tiempo1 ?Tiempo)
>>>>>>> fix power off lights
=>
    (if(<= (- ?Tiempo1 ?time) 3)
        then
        (assert (accion pulsador_luz ?Hab apagar))
        (retract ?Borrar)
    )
)