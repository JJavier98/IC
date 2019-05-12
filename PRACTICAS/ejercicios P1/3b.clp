(deffacts loadfile (loadFile)) ; hecho que inicia la lectura

(defrule iniLoad ; abrimos el archivo para leer
    ?borrar <- (loadFile) ; existe el hecho de inicio
=>
    (open "DatosT.clp" leerTfile "r") ; abrimos el archivo
    (assert (abierto leerTfile)) ; creamos hecho para indicar que está abierto
    (retract ?borrar) ; borramos el hecho que incia
)

(defrule loadT ; cargamos datos
    ?borrar <- (abierto leerTfile) ; el archivo está abierto
=>
    (bind ?linea (readline leerTfile)) ; leemos una línea del fichero
    (retract ?borrar) ; borramos el hecho que indica que está abierto
    (if (eq ?linea EOF) then ; si la línea leida es el final de archivo
        (close leerTfile) ; cierra el archivo
    else ; si no
        (assert (abierto leerTfile)) ; vuelve a indicar que el fichero sigue abierto
        (assert (newT (explode$ ?linea))) ; crea un dato 'newT' con los valores leídos
        ; la función explode transforma el string a datos numéricos
    )
)