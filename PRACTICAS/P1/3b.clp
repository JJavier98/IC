(defrule EncenderLuzInteligente
    (Habitacion ?Hab)
    (ultimo_registro estado_luz ?Hab off)
    (ultimo_registro movimiento ?Hab ?time)
    (valor_registrado ?time movimiento ?Hab on)
=>
    (assert (accion pulsador_luz ?Hab encender))
)

(defrule PreApagarLuzInteligente
    (Habitacion ?Hab)
    (ultimo_registro estado_luz ?Hab on)
    (ultimo_registro movimiento ?Hab ?time)
    (valor_registrado ?time movimiento ?Hab off)
=>
    (bind ?Tiempo (totalsegundos (horasistema) (minutossistema) (segundossistema)) )
    (assert (aux_apaga ?Hab ?time ?Tiempo))
)

(defrule ApagarLuzInteligente
    (Habitacion ?Hab)
    ?Borrar <- (aux_apaga ?Hab ?time ?Tiempo)
=>
    (if(< (- ?Tiempo ?time) 10)
    then
    (bind ?Tiempo (totalsegundos (horasistema) (minutossistema) (segundossistema)) )
    (assert(aux_apaga ?Hab ?time ?Tiempo))
    (retract (?Borrar))
    else
    (assert (accion pulsador_luz ?Hab apagar))
    (retract (?Borrar))
    )
)

(defrule )