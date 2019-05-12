(deffacts vectores ; creamos varios vectores T
    (T 5 7 8 9 5 2 1 5 8 0 9 2 1 8)
    (T 5 8 4 2 1 2 4 7 8 9 2 1 8 5)
    (T 5 7 8 9 5)
    (T 5 7 8 9 5 2 1 9 2 1 8)
)

(deffacts savefile (saveTinFile)) ; este es el hecho que inicializa la escritura

(defrule iniPrint ; primer método
    ?borrar <- (saveTinFile) ; existe el hecho que inicia la escritura
=>
    (open "DatosT.clp" datosTfile "w") ; abrimos el fichero donde vamos a escribir
    (assert (abierto datosTfile)) ; creamos un hecho diciendo que el fichero está abierto
    (retract ?borrar) ; borramos el hecho que inicia la escritura
)

(defrule printT ; escrimir hechos en el archivo
    (abierto datosTfile) ; el archivo está abierto
    (T $?n) ; existe el vector T
    (not (copiaT $?n)) ; no tiene copia
=>
    (foreach ?campo (create$ $?n) ; recorremos los datos del vector T
        (printout datosTfile ?campo) ; escribimos un dato
        (printout datosTfile " ") ; escribimos un separador entre datos
    )
    (printout datosTfile crlf) ; escribimos un salto de linea
    (assert (copiaT $?n)) ; creamos una copia del vector
)

(defrule closeT ; cerramos el archivo
    (not ; no existe un vector que no tenga una copia
            (and
                    (T $?n)
                    (not (copiaT $?n))
            )
    ) ; el archivo está abierto
    ?borrar <- (abierto datosTfile)
=>
    (close datosTfile) ; cerramos el archivo
    (retract ?borrar) ; borramos el hecho que indica que está abierto
)

(defrule borraCopias ; regla extra. Si queremos que funcione más veces, debemos eliminar las copias hechas
    (not (abierto datosTfile)) ; el archivo no está aboerto
    ?borrar <- (copiaT $?n) ; existe una copia
=>
    (retract ?borrar) ; borramos la copia
)