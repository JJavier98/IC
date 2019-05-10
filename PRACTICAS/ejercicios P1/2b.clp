(deffacts vectores
    (T 5 7 8 9 5 2 1 5 8 0 9 2 1 8)
)

(defrule minXiT
    (T $?n)
=>
    (bind ?min (nth$ 1 (create$ $?n)))
    (foreach ?campo (create$ $?n)
        (if (< ?campo ?min) then
            (bind ?min ?campo)
        )
    )
    (assert (minXiT ?min))
)