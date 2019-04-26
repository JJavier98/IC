(defglobal ?*SO* = 1)

(defrule duplicaHechoPrimeraVez
    (not (NumeroHechos ?hechos ?n))
    (Contarhechos ?hecho) ; Se quiere contar el número de hechos
    (?hecho $?x) ; Existe al menos un hecho
    (not(hecho_no_procesado ?hecho ?x)) ; Ese hecho no se ha duplicado todavía
=>
    ; duplicamos el valor registrado
    (assert (hecho_no_procesado ?hecho ?x))
)

(defrule duplicaHecho
    ?Borrar <- (NumeroHechos ?hechos ?n)
    (Contarhechos ?hecho) ; Se quiere contar el número de hechos
    (?hecho $?x) ; Existe al menos un hecho
    (not(hecho_no_procesado ?hecho ?x)) ; Ese hecho no se ha duplicado todavía
=>
    ; duplicamos el valor registrado
    (assert (hecho_no_procesado ?hecho ?x))
    (retract ?Borrar)
)

;::::::::::: REGLA: AUXILIAR PARA REALIZAR EL INFORME :::::::::::
(defrule finDuplica ; Cuando hemos acabado de duplicar los datos del informe borramos el hecho 'informe'
    ?Borrar <- (Contarhechos ?hecho)
    (not
            (and
                    (?hecho $?x)
                    (not (hecho_no_procesado ?hecho ?x))
            )
    )
=>
    ; Borramos y comenzamos la impresión del informe
    (retract ?Borrar)
    (assert (NumeroHechos ?hecho 0))
)

(defrule cuentaHechos
    (not (Contarhechos ?hecho)) ; Comprobamos que ya hemos duplicado los datos
    (NumeroHechos ?hecho ?n)
    ?Borrar <- (hecho_no_procesado ?hecho $?x) ; Guardamos los datos no procesados más recientes
=>
    ; Imprimimos los datos y borramos el duplicado
    (assert (NumeroHechos ?hecho (+ ?n 1) ))
    (retract ?Borrar)
)
