(deftemplate T
    (slot valor)
)

(deffacts datos
    (T (valor 8))
    (T (valor 1))
    (T (valor 2))
    (T (valor 6))
    (T (valor 4))
    (T (valor 9))
    (T (valor 5))
)

(defrule iniMIN
    (T (valor ?v))
    (not(copiaT ?v))
    (not(minT ?min))
=>
    (assert (copiaT ?v))
    (assert (minT ?v))
)

(defrule minSdeT
    (T (valor ?v))
    (not(copiaT ?v))
    ?borrar <- (minT ?min)
=>
    (assert (copiaT ?v))
    (if (< ?v ?min) then
        (assert (minT ?v))
        (retract ?borrar)
    )
)