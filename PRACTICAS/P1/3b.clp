(defrule EncenderLuzInteligente
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultima_activacion movimiento ?Hab ?time1)
    (ultima_desactivacion movimiento ?Hab ?time&:(>= ?time1 ?time))
    (ultimo_registro estadoluz ?Hab ?time2)
    (valor_registrado ?time2 estadoluz ?Hab off)
    (ultimo_registro luminosidad ?Hab ?time3)
    (valor_registrado ?time3 luminosidad ?Hab ?lux)
    (luminosidad_minima ?Hab ?lux2&:(<= ?lux ?lux2))
=>
    (assert (accion pulsador_luz ?Hab encender))
)

(defrule ApagarLuzInteligentePorLuminosidad
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultimo_registro estadoluz ?Hab ?time2)
    (valor_registrado ?time2 estadoluz ?Hab on)
    (ultimo_registro luminosidad ?Hab ?time3)
    (valor_registrado ?time3 luminosidad ?Hab ?lux)
    (luminosidad_maxima ?Hab ?lux2&:(>= ?lux ?lux2))
=>
    (assert (accion pulsador_luz ?Hab apagar))
)

(defrule ApagarLuzInteligente
    (Habitacion ?Hab)
    (Manejo_inteligente_luces ?Hab)
    (ultimo_registro estadoluz ?Hab ?time2)
    (valor_registrado ?time2 estadoluz ?Hab on)
    (ultima_desactivacion movimiento ?Hab ?time3)
    (ultima_activacion movimiento ?Hab ?time4&:(>= ?time3 ?time4))
    (ultimo_registro movimiento ?Hab ?time5&:(>= (- ?time5 ?time3) 10))
    (valor_registrado ?time5 movimiento ?Hab off)
=>
    (assert (accion pulsador_luz ?Hab apagar))
)

(defrule SeHaIdoAColindante
    (Habitacion ?Hab)
    (Habitacion ?Hab1)
    (Manejo_inteligente_luces ?Hab)
    (posible_pasar ?Hab ?Hab1)
    (ultimo_registro estadoluz ?Hab ?time2)
    (valor_registrado ?time2 estadoluz ?Hab on)
    (ultima_activacion movimiento ?Hab ?time)
    (ultima_desactivacion movimiento ?Hab ?time3&:(> ?time3 ?time))
    (ultima_activacion movimiento ?Hab1 ?time4&:(>= ?time4 ?time3))
=>
    (if(<= (- ?time4 ?time3) 3)
        then
        (assert (accion pulsador_luz ?Hab apagar))
    )
)