(deffacts vectores ; creamos un vector T
    (T 5 7 8 9 5 2 1 5 8 0 9 2 1 8)
)

(defrule minXiT ; buscamos el minimo
    (T $?n) ; existe un vector T
=>
    (bind ?min (nth$ 1 (create$ $?n))) ; inicializamos el minimo al primer elemento del vector
    (foreach ?campo (create$ $?n) ; recorremos los elementos
        (if (< ?campo ?min) then ; si el elemento que recorremos es menor que el minimo
            (bind ?min ?campo) ; actualizamos el mínimio
        )
    )
    (assert (minXiT ?min)) ; creamos el hecho minimo
)