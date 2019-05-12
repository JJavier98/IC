(deftemplate T ; declaramos la estructura del template
    (slot valor)
)

(deffacts datos ; creamos una serie de templates
    (T (valor 8))
    (T (valor 1)) ; este es el mínimo
    (T (valor 2))
    (T (valor 6))
    (T (valor 4))
    (T (valor 9))
    (T (valor 5))
)

(defrule iniMIN ; cuando todavía no hay un mínimo inicializado
    (T (valor ?v)) ; existe un template
    (not(copiaT ?v)) ; no tiene copia
    (not(minT ?min)) ; no existe un mínimo
=>
    (assert (copiaT ?v)) ; creamos la copia
    (assert (minT ?v)) ; inicializamos el mínimo
)

(defrule minSdeT ; con el mínimo inicializado
    (T (valor ?v)) ; existe el template
    (not(copiaT ?v)) ; no tiene copia
    ?borrar <- (minT ?min) ; existe el minimo
=>
    (assert (copiaT ?v)) ; creamos la copia
    (if (< ?v ?min) then ; si el heche es menos que el minimo
        (assert (minT ?v)) ; creamos el nuevo minimo
        (retract ?borrar) ; borramos el anterior
    )
)