(defglobal ?*SO* = 1)

;::::::::::: INTRODUCCION DE HABITACIONES :::::::::::
(deffacts Habitaciones
        (Habitacion Garaje)
        (Habitacion Entrada)
        (Habitacion Ropero)
        (Habitacion Comedor)
        (Habitacion Salon1)
        (Habitacion Salon2)
        (Habitacion Cocina)
        (Habitacion Baño)
        (Habitacion Dormitorio)
        (Habitacion Pasillo))

;::::::::::: INTRODUCCION DE PUERTAS :::::::::::
(deffacts Puertas
        (Puerta Pt1)
        (Puerta Pt2)
        (Puerta Pt3)
        (Puerta Pt4)
        (Puerta Pt5)
        (Puerta Pt6)
        (Puerta Pt7)
        (Puerta Pt8))

;::::::::::: INTRODUCCION DE PASOS :::::::::::
(deffacts Pasos
        (Paso Ps1)
        (Paso Ps2)
        (Paso Ps3)
        (Paso Ps4)
        (Paso Ps5)
        (Paso Ps6))

;::::::::::: INTRODUCCION DE VENTANAS :::::::::::
(deffacts Ventanas
        (Ventana V1)
        (Ventana V2)
        (Ventana V3)
        (Ventana V4)
        (Ventana V5)
        (Ventana V6)
        (Ventana V7))

;::::::::::: ASOCIACION DE PUERTAS Y HABITACIONES (PteH - Puertas en Habitacion) :::::::::::
(deffacts PuertasEnHabitacion
        (PteH Garaje Pt6)
        (PteH Garaje Pt8)
        (PteH Entrada Pt2)
        (PteH Entrada Pt1)
        (PteH Ropero Pt2)
        (PteH Salon2 Pt3)
        (PteH Baño Pt4)
        (PteH Dormitorio Pt5)
        (PteH Pasillo Pt6)
        (PteH Pasillo Pt7)
        (PteH Pasillo Pt4)
        (PteH Pasillo Pt5))

;::::::::::: ASOCIACION DE PASOS Y HABITACIONES (PseH - Pasos en Habitacion) :::::::::::
(deffacts PasosEnHabitacion
        (PseH Entrada Ps1)
        (PseH Entrada Ps6)
        (PseH Comedor Ps5)
        (PseH Comedor Ps6)
        (PseH Salon1 Ps1)
        (PseH Salon1 Ps2)
        (PseH Salon2 Ps2)
        (PseH Salon2 Ps3)
        (PseH Cocina Ps3)
        (PseH Cocina Ps4)
        (PseH Cocina Ps5)
        (PseH Pasillo Ps4))

;::::::::::: ASOCIACION DE VENTANAS Y HABITACIONES (VeH - Ventanas en Habitacion) :::::::::::
(deffacts VentanasEnHabiatcion
        (VeH Garaje V1)
        (VeH Comedor V2)
        (VeH Salon1 V3)
        (VeH Salon2 V4)
        (VeH Salon2 V5)
        (VeH Cocina V6)
        (VeH Dormitorio V7))

;::::::::::: VALORES INICIALES DE LOS SENSORES DE MOVIMIENTO Y LUMINOSIDAD ASÍ COMO DEL ESTADO DE LA LUZ ::::::::::
(deffacts Sensores
        (valor movimiento Salon1 off)
        (valor luminosidad Salon1 20)
        (valor estadoluz Salon1 off)
        (valor movimiento Salon2 off)
        (valor luminosidad Salon2 20)
        (valor estadoluz Salon2 off)
        (valor movimiento Comedor off)
        (valor luminosidad Comedor 20)
        (valor estadoluz Comedor off)
        (valor movimiento Pasillo off)
        (valor luminosidad Pasillo 20)
        (valor estadoluz Pasillo off)
        (valor movimiento Dormitorio off)
        (valor luminosidad Dormitorio 20)
        (valor estadoluz Dormitorio off)
        (valor movimiento Ropero off)
        (valor luminosidad Ropero 20)
        (valor estadoluz Ropero off)
        (valor movimiento Cocina off)
        (valor luminosidad Cocina 20)
        (valor estadoluz Cocina off)
        (valor movimiento Garaje off)
        (valor luminosidad Garaje 20)
        (valor estadoluz Garaje off)
        (valor movimiento Baño off)
        (valor luminosidad Baño 20)
        (valor estadoluz Baño off)
        (valor movimiento Entrada off)
        (valor luminosidad Entrada 20)
        (valor estadoluz Entrada off)
        )

;::::::::::: VALORES NECESARIOS PARA CREAR LOS ÚLTIMOS REGISTROS ::::::::::
;::::::::::: ESTOS VALORES SE REEMPLAZARÁN ::::::::::
(deffacts UltimosRegistradosPorDefectoParaQueFuncioneEsto
        (ultimo_registro movimiento Entrada -1)
        (ultimo_registro luminosidad Entrada -1)
        (ultimo_registro estadoluz Entrada -1)
        (ultimo_registro movimiento Comedor -1)
        (ultimo_registro luminosidad Comedor -1)
        (ultimo_registro estadoluz Comedor -1)
        (ultimo_registro movimiento Salon1 -1)
        (ultimo_registro luminosidad Salon1 -1)
        (ultimo_registro estadoluz Salon1 -1)
        (ultimo_registro movimiento Salon2 -1)
        (ultimo_registro luminosidad Salon2 -1)
        (ultimo_registro estadoluz Salon2 -1)
        (ultimo_registro movimiento Dormitorio -1)
        (ultimo_registro luminosidad Dormitorio -1)
        (ultimo_registro estadoluz Dormitorio -1)
        (ultimo_registro movimiento Cocina -1)
        (ultimo_registro luminosidad Cocina -1)
        (ultimo_registro estadoluz Cocina -1)
        (ultimo_registro movimiento Baño -1)
        (ultimo_registro luminosidad Baño -1)
        (ultimo_registro estadoluz Baño -1)
        (ultimo_registro movimiento Pasillo -1)
        (ultimo_registro luminosidad Pasillo -1)
        (ultimo_registro estadoluz Pasillo -1)
        (ultimo_registro movimiento Garaje -1)
        (ultimo_registro luminosidad Garaje -1)
        (ultimo_registro estadoluz Garaje -1)
        (ultimo_registro movimiento Ropero -1)
        (ultimo_registro luminosidad Ropero -1)
        (ultimo_registro estadoluz Ropero -1))

;::::::::::: VALORES NECESARIOS PARA CREAR LAS ACTIVACIONES Y DESACTIVACIONES DE MOVIMIENTO ::::::::::
(deffacts UltimasDesactivacionesYActivaciones
        (ultima_activacion movimiento Entrada -1)
        (ultima_activacion movimiento Comedor -1)
        (ultima_activacion movimiento Salon1 -1)
        (ultima_activacion movimiento Salon2 -1)
        (ultima_activacion movimiento Dormitorio -1)
        (ultima_activacion movimiento Cocina -1)
        (ultima_activacion movimiento Baño -1)
        (ultima_activacion movimiento Pasillo -1)
        (ultima_activacion movimiento Garaje -1)
        (ultima_activacion movimiento Ropero -1)
        (ultima_desactivacion movimiento Entrada 0)
        (ultima_desactivacion movimiento Comedor 0)
        (ultima_desactivacion movimiento Salon1 0)
        (ultima_desactivacion movimiento Salon2 0)
        (ultima_desactivacion movimiento Dormitorio 0)
        (ultima_desactivacion movimiento Cocina 0)
        (ultima_desactivacion movimiento Baño 0)
        (ultima_desactivacion movimiento Pasillo 0)
        (ultima_desactivacion movimiento Garaje 0)
        (ultima_desactivacion movimiento Ropero 0))

;::::::::::: HABITACIONES CON MANEJO INTELIGENTE ::::::::::
;::::::::::: DATOS CLAVE PARA EL MANEJO DE LAS LUCES ::::::::::

;::::::::::: 3A ::::::::::
;(deffacts Manejo
;        (Manejo_inteligente_luces Comedor)
;        (Manejo_inteligente_luces Entrada)
;        (Manejo_inteligente_luces Salon1)
;        (Manejo_inteligente_luces Cocina)
;        (Manejo_inteligente_luces Baño)
;        (luminosidad_minima Comedor 200)
;        (luminosidad_minima Entrada 200)
;        (luminosidad_minima Salon1 200)
;        (luminosidad_minima Cocina 200)
;        (luminosidad_minima Baño 100)
;        (luminosidad_maxima Comedor 600)
;        (luminosidad_maxima Entrada 600)
;        (luminosidad_maxima Salon1 600)
;        (luminosidad_maxima Cocina 600)
;        (luminosidad_maxima Baño 600)
;        )
;
;::::::::::: 3B ::::::::::
(deffacts Manejo
        (Manejo_inteligente_luces Comedor)
        (Manejo_inteligente_luces Entrada)
        (Manejo_inteligente_luces Salon1)
        (Manejo_inteligente_luces Salon2)
        (Manejo_inteligente_luces Dormitorio)
        (Manejo_inteligente_luces Cocina)
        (Manejo_inteligente_luces Baño)
        (luminosidad_minima Comedor 200)
        (luminosidad_minima Entrada 400)
        (luminosidad_minima Salon1 300)
        (luminosidad_minima Salon2 300)
        (luminosidad_minima Dormitorio 500)
        (luminosidad_minima Cocina 300)
        (luminosidad_minima Baño 200)
        (luminosidad_maxima Comedor 400)
        (luminosidad_maxima Entrada 800)
        (luminosidad_maxima Salon1 600)
        (luminosidad_maxima Salon2 600)
        (luminosidad_maxima Dormitorio 1000)
        (luminosidad_maxima Cocina 600)
        (luminosidad_maxima Baño 400)
        )

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;:::::::::::::::::::::::::: FUNCIONES DE TIEMPO :::::::::::::::::::::::::::::::::::::
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

;; Funcion que transforma ?h:?m:?s  en segundos transcurridos desde las 0h en punto ;;;

(deffunction totalsegundos (?h ?m ?s)
   (bind ?rv (+ (* 3600 ?h) (* ?m 60) ?s))
   ?rv)
   
;;;;;; Funcion que devuelve la salida de ejecutar  ?arg en linea de comandos del sistema ;;;
          
   (deffunction system-string (?arg)
   (bind ?arg (str-cat ?arg " > temp.txt"))
   (system ?arg)
   (open "temp.txt" temp "r")
   (bind ?rv (readline temp))
   (close temp)
   ?rv)
   
;;;;;; Funcion que devuelve el nº de horas de la hora del sistema, si en el sistema son las ?h:?m:?s, devuelve ?h  ;;;;;;;;;;;;
   
   (deffunction horasistema ()
   (if (= ?*SO* 1) 
      then
         (bind ?rv (integer (string-to-field (sub-string 1 2  (system-string "time /t")))))
           else 
             (bind ?rv (string-to-field  (system-string "date +%H"))) 
         )                
   ?rv)
   
;;;;;; Funcion que devuelve el nº de minutos de la hora del sistema, si en el sistema son las ?h:?m:?s, devuelve ?m  ;;;;;;;;;;;; 
 
   (deffunction minutossistema ()
   (if (= ?*SO* 1) 
       then
          (bind ?rv (integer (string-to-field (sub-string 4 5  (system-string "time /t")))))
           else 
             (bind ?rv (string-to-field  (system-string "date +%M")))     )
   ?rv)
   
;;;;;; Funcion que devuelve el nº de segundos de la hora del sistema, si en el sistema son las ?h:?m:?s, devuelve ?s  ;;;;;;;;;;;;
   
   (deffunction segundossistema ()
   (if (= ?*SO* 1) 
       then
          (bind ?rv (integer (string-to-field (sub-string 7 8  (system-string "@ECHO.%time:~0,8%")))))
           else 
             (bind ?rv (string-to-field  (system-string "date +%S")))     )
   ?rv)
   
;;;;;; Funcion que devuelve el valor de ?h  al pasar ?t segundos al formato ?h:?m:?s  ;;;;;;;;;;
   
    (deffunction hora-segundos (?t)
   (bind ?rv  (div ?t 3600))
   ?rv)
   
;;;;;; Funcion que devuelve el valor de ?m  al pasar ?t segundos al formato ?h:?m:?s  ;;;;;;;;;;   
   (deffunction minuto-segundos (?t)
   (bind ?rv (- ?t (* (hora-segundos ?t) 3600)))
   (bind ?rv (div ?rv 60))
   ?rv)

;;;;;; Funcion que devuelve el valor de ?s  al pasar ?t segundos al formato ?h:?m:?s  ;;;;;;;;;;     
   (deffunction segundo-segundos (?t)
   (bind ?rv (- ?t (* (hora-segundos ?t) 3600)))
   (bind ?rv (- ?rv (* (minuto-segundos ?t) 60)))
   ?rv)

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

;::::::::::: REGLA: DOS HABITACIONES COMPARTEN UNA MISMA PUERTA :::::::::::
(defrule ConectaPuerta
    (PteH ?Habitacion1 ?Pt) ; Una habitación x_1 tiene una puerta y_1
    (PteH ?Habitacion2&~?Habitacion1 ?Pt) ; Una habitación x_2 que no es x_1 tiene la misma puerta y_1
    (Habitacion ?Habitacion1) ; Existe x_1
    (Habitacion ?Habitacion2) ; Existe x_2
    (Puerta ?Pt) ; Existe y_1
=>
    ; Indicamos que las habitaciones están conectadas por una puerta
    (assert (conecta_puerta ?Habitacion1 ?Habitacion2))
)

;::::::::::: REGLA: DOS HABITACIONES COMPARTEN UN MISMO PASO :::::::::::
(defrule ConectaPaso
    (PseH ?Habitacion1 ?Ps) ; Una habitación x_1 tiene un paso y_1
    (PseH ?Habitacion2&~?Habitacion1 ?Ps) ; Una habitación x_2 que no es x_1 tiene asociado el mismo paso y_1
    (Habitacion ?Habitacion1) ; Existe x_1
    (Habitacion ?Habitacion2) ; Existe x_2
    (Paso ?Ps) ; Existe y_1
=>
    ; Indicamos que las habitaciones están conectadas por un paso
    (assert (conecta_paso ?Habitacion1 ?Habitacion2))
)

;::::::::::: REGLA: DOS HABITACIONES ESTÁN CONECTADAS POR UN PASO O PUERTA :::::::::::
(defrule PosiblePasar
    (or (conecta_puerta ?Hab1 ?Hab2) ; Dos habitaciones están conectadas por una puerta
        (conecta_paso ?Hab1 ?Hab2) ; Dos habitaciones están conectadas por un paso
    )
    ; Existen ambas habitaciones
    (Habitacion ?Hab1)
    (Habitacion ?Hab2)
=>
    ; Indicamos que las habitaciones están conectadas
    (assert (posible_pasar ?Hab1 ?Hab2))
)

;::::::::::: REGLA: ES NECESARIO PASAR POR OTRA HABITACIÓN OBLIGATORIAMENTE PARA LLEGAR A OTRA? :::::::::::
(defrule NecesarioPasar
    (or ; La habitación puede estar conectada por puerta o paso
        (and ; si es por puerta
            (Puerta ?Pt) ; existe esa puerta
            (PteH ?Hab ?Pt) ; la puerta está en la habitación 1
            (PteH ?Hab1&~?Hab ?Pt) ; la puerta está también en una habitación 2 diferente
        )
        (and; si es por paso
            (Paso ?Ps) ; existe ese paso
            (PseH ?Hab ?Ps); el paso está en la habitación 1
            (PseH ?Hab1&~?Hab ?Ps); el paso está también en una habitación 2 diferente
        )
    )
    (not ; no existe otra puerta o paso en la habitación 1 que conecte con otra habitación que no sea la 2
        (or
            (and
                (Puerta ?Pt2)
                (PteH ?Hab ?Pt2)
                (PteH ?Hab2&~?Hab ?Pt2)
                (PteH ?Hab2&~?Hab1 ?Pt2)
            )
            (and
                (Paso ?Ps2)
                (PseH ?Hab ?Ps2)
                (PseH ?Hab2&~?Hab ?Ps2)
                (PseH ?Hab2&~?Hab1 ?Ps2)
            )
        )
    )
=>
    ; Indicamos que solo se puede entrar a la habitación 1 (Hab) por la habitación 2 (Hab1)
    (assert (necesario_pasar ?Hab ?Hab1))
)

;::::::::::: REGLA: ES UNA HABITACION INTERIOR? (CARECE DE VENTANAS?) :::::::::::
(defrule HabitacionInterior
    (Habitacion ?Hab) ; Existe la habitación
    (not(VeH ?Hab $?)) ; La habitación no tiene ventana
=>
    ; Indicamos que esa habitación es interior
    (assert (habitacion_interior ?Hab))
)

;::::::::::: REGLA: AÑADIR TIEMPO A LOS HECHOS ENVIADOS POR SENSORES Y ACTUALIZAR EL ULTIMO_REGISTRO :::::::::::
(defrule CambioDetectado
    (Habitacion ?Hab) ; comprobar que existe la habitación
    ?Borrar <- (valor ?tipo ?Hab ?value) ; guardar el índice del hecho que ha activado el cambio para borrarlo
    ?Borrar1 <- (ultimo_registro ?tipo ?Hab ?time) ; guardar el índice del ultimo_registro para borrarlo y así, actualizarlo
=>
    (bind ?Tiempo ?*transcurrido* ) ; guardamos en una variable la hora del sistema para que coincida en todos los asserts   
    ;(bind ?Tiempo (totalsegundos (horasistema) (minutossistema) (segundossistema)) ) ; guardamos en una variable la hora del sistema para que coincida en todos los asserts
    (assert (valor_registrado ?Tiempo ?tipo ?Hab ?value)) ; registramos el nuevo valor registrado por el sensor
    (assert (ultimo_registro ?tipo ?Hab ?Tiempo )) ; actualizamos el último registro del sensor
    (retract ?Borrar) ; borramos el hecho de activación
    (retract ?Borrar1) ; borramos el anterior registrado
)

;::::::::::: REGLA: INDICAR ULTIMA DESACTIVACION :::::::::::
(defrule On2Off
    (Habitacion ?Hab) ; existe la habitación
    ?Borrar <- (ultima_desactivacion movimiento ?Hab ?t) ; Guardamos la última desactivación existente para actualizarla
    ; Comprobamos que ha habido una activación después de la desactivación que vamos a borrar
    ; y que por lo tanto la desactivación que ha activado la regla es posterior a esta activación
    (ultima_activacion movimiento ?Hab ?time2 &: (> ?time2 ?t))
    (ultimo_registro movimiento ?Hab ?t1&:(> ?t1 ?time2)) ; necesitamos saber el tiempo del ultimo registrado para obtener su valor
    (valor_registrado ?t1 movimiento ?Hab off) ; valor registrado que coincide con el ultimo registro
    (valor_registrado ?t2 movimiento ?Hab $?) ; demás valores de valor_registrado
    (valor_registrado ?t4&:(and (>= ?t4 ?t2) (< ?t4 ?t1)) movimiento ?Hab on); valor registrado inmediatamente anterior
=>
    ; Actualizamos la última desactivación
    (assert (ultima_desactivacion movimiento ?Hab ?t1) )
    (retract ?Borrar)
)

;::::::::::: REGLA: INDICAR ULTIMA ACTIVACION :::::::::::
(defrule Off2On
    (Habitacion ?Hab) ; existe la habitación
    ?Borrar <- (ultima_activacion movimiento ?Hab ?t); Guardamos la última activación existente para actualizarla
    ; Comprobamos que ha habido una desactivación después de la activación que vamos a borrar
    ; y que por lo tanto la activación que ha activado la regla es posterior a esta desactivación
    (ultima_desactivacion movimiento ?Hab ?time2 &: (> ?time2 ?t))
    (ultimo_registro movimiento ?Hab ?t1&:(>= ?t1 ?time2)) ; necesitamos saber el tiempo del ultimo registrado para obtener su valor        
    (valor_registrado ?t1 movimiento ?Hab on) ; valor registrado que coincide con el ultimo registro
    (valor_registrado ?t2 movimiento ?Hab $?) ; demás valores de valor_registrado
    (valor_registrado ?t4&:(and (>= ?t4 ?t2) (< ?t4 ?t1)) movimiento ?Hab off); valor registrado inmediatamente anterior

=>
    ; Actualizamos la última activación
    (assert (ultima_activacion movimiento ?Hab ?t1) )
    (retract ?Borrar)
)

;::::::::::: REGLA: AUXILIAR PARA REALIZAR EL INFORME :::::::::::
(defrule duplicaInforme
    (informe ?Hab) ; Existe la habitación
    (valor_registrado ?time ?tipo ?Hab ?value) ; Todavía hay un valor registrado que no hemos duplicado
    (not(no_procesado ?time ?tipo ?Hab ?value))
=>
    ; duplicamos el valor registrado
    (assert (no_procesado ?time ?tipo ?Hab ?value))
)

;::::::::::: REGLA: AUXILIAR PARA REALIZAR EL INFORME :::::::::::
(defrule finDuplica ; Cuando hemos acabado de duplicar los datos del informe borramos el hecho 'informe'
    ?Borrar <- (informe ?Hab)
    (not
            (and
                    (valor_registrado ?time ?tipo ?Hab ?value)
                    (not (no_procesado ?time ?tipo ?Hab ?value))
            )
    )
=>
    ; Borramos y comenzamos la impresión del informe
    (retract ?Borrar)
    (printout t "INFORME: " crlf)
)

;::::::::::: REGLA: REALIZA INFORME :::::::::::
(defrule imprimeInforme
    (not (informe ?Hab)) ; Comprobamos que ya hemos duplicado los datos
    ?Borrar <- (no_procesado ?t1 ?tipo ?Hab ?v) ; Guardamos los datos no procesados más recientes
    (not (no_procesado ?t2 &: (> ?t2 ?t1) ? ?Hab ?))
=>
    ; Imprimimos los datos y borramos el duplicado
    (printout t "Tiempo: " ?t1 " Tipo: " ?tipo " Habitación: " ?Hab " Valor: " ?v crlf)
    (retract ?Borrar)
)

;::::::::::: REGLA: CAMBIAR A OFF :::::::::::
(defrule InterruptorCambiarAOff
    (Habitacion ?Hab) ; Existe la habitación
    ?Borrar <- (accion pulsador_luz ?Hab cambiar) ; ha habido una acción de cambiar
    (ultimo_registro estadoluz ?Hab on) ; Si la luz estaba a on
=>
    (assert (valor estadoluz ?Hab off)) ; Poner a off
    (retract ?Borrar)
)

;::::::::::: REGLA: CAMBIAR A ON :::::::::::
(defrule InterruptorCambiarAOn
    (Habitacion ?Hab) ; Existe la habitación
    ?Borrar <- (accion pulsador_luz ?Hab cambiar) ; ha habido una acción de cambiar
    (ultimo_registro estadoluz ?Hab off) ; Si la luz estaba a off
=>
    (assert (valor estadoluz ?Hab on)) ; Poner a on
    (retract ?Borrar)
)

;::::::::::: REGLA: APAGAR :::::::::::
(defrule InterruptorApagar
    (Habitacion ?Hab) ; Existe la habitación
    ?Borrar <- (accion pulsador_luz ?Hab apagar)
=>
    (assert (valor estadoluz ?Hab off)) ; Apagamos la luz
    (retract ?Borrar)
)

;::::::::::: REGLA: ENCENDER :::::::::::
(defrule InterruptorEncender
    (Habitacion ?Hab); Existe la habitación
    ?Borrar <- (accion pulsador_luz ?Hab encender)
=>
    (assert (valor estadoluz ?Hab on)) ; Encendemos la luz
    (retract ?Borrar)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; -------------------------------------- 3A ------------------------------------------------- ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; RESPECTO AL 3B MEJORAMOS EN QUE LAS HABITACIONES INTELIGENTES QUE SÓLO TENGAN UNA PUERTA O UN PASO
;;; NO APAGARÁN SU LUZ AUNQUE HAYA INACTIVIDAD HASTA QUE SALGAN DE ELLA O SE PULSE EL INTERRUPTOR

;(defrule EncenderLuzInteligente
;    (Habitacion ?Hab) ; Existe la habitación
;    (Manejo_inteligente_luces ?Hab) ; La habitación es inteligente
;    (ultima_activacion movimiento ?Hab ?time1) ; Ha habido una activación reciente
;    (ultima_desactivacion movimiento ?Hab ?time&:(>= ?time1 ?time)) ; Esta activación ha sido después de la última desactivación
;    (ultimo_registro estadoluz ?Hab ?time2) ; El último registro de la luz es
;    (valor_registrado ?time2 estadoluz ?Hab off) ; Apagada
;    (ultimo_registro luminosidad ?Hab ?time3); El último registro de luminosidad
;    (valor_registrado ?time3 luminosidad ?Hab ?lux)
;    (luminosidad_minima ?Hab ?lux2&:(<= ?lux ?lux2)) ; Está por debajo del mínimo
;=>
;    ; Encendemos la luz
;    (assert (accion pulsador_luz ?Hab encender))
;)
;
;(defrule ApagarLuzInteligentePorLuminosidad
;    (Habitacion ?Hab) ; Existe la habitación
;    (Manejo_inteligente_luces ?Hab) ; La habitación es inteligente
;    (ultimo_registro estadoluz ?Hab ?time2); El último registro de la luz es
;    (valor_registrado ?time2 estadoluz ?Hab on) ; Encendida
;    (ultimo_registro luminosidad ?Hab ?time3); El último registro de luminosidad
;    (valor_registrado ?time3 luminosidad ?Hab ?lux)
;    (luminosidad_maxima ?Hab ?lux2&:(>= ?lux ?lux2)); Está por encima del máximo
;=>
;    ; Apagamos la luz
;    (assert (accion pulsador_luz ?Hab apagar))
;)
;
;(defrule ApagarLuzInteligente
;    (Habitacion ?Hab) ; Existe la habitación
;    (Manejo_inteligente_luces ?Hab); La habitación es inteligente
;    (not (necesario_pasar ?Hab ?)) ; La habitación tiene más de una salida
;    (ultimo_registro estadoluz ?Hab ?time2) ; El último registro de la luz es
;    (valor_registrado ?time2 estadoluz ?Hab on) ; Encendida
;    (ultima_desactivacion movimiento ?Hab ?time3) ; Ha habido una desactivación que es más reciente que la última activación
;    (ultima_activacion movimiento ?Hab ?time4&:(>= ?time3 ?time4))
;    (ultimo_registro movimiento ?Hab ?time5&:(>= (- ?time5 ?time3) 10)) ; Si no se detecta movimiento tras 10 segundos desde la desactivación
;    (valor_registrado ?time5 movimiento ?Hab off)
;=>
;    ; Apagamos la luz
;    (assert (accion pulsador_luz ?Hab apagar))
;)
;
;(defrule SeHaIdoAColindante
;    (Habitacion ?Hab) ; Existe habitación 1
;    (Habitacion ?Hab1) ; Existe habitación 2
;    (Manejo_inteligente_luces ?Hab) ; La habitación 1 es inteligente
;    (not (necesario_pasar ?Hab ?)) ; La habitación tiene más de una salida
;    (posible_pasar ?Hab ?Hab1) ; Las habitaciones son colindantes
;    (ultimo_registro estadoluz ?Hab ?time2) ; La habitación 1 está encendida
;    (valor_registrado ?time2 estadoluz ?Hab on)
;    (ultima_activacion movimiento ?Hab ?time) ; Hay una desactivación de movimiento posterior a la última activación
;    (ultima_desactivacion movimiento ?Hab ?time3&:(> ?time3 ?time))
;    (ultima_desactivacion movimiento ?Hab1 ?time5) ; Hay una activación de movimiento en la habitación 2 posterior a su última desactivación
;    (ultima_activacion movimiento ?Hab1 ?time4&:(>= ?time4 ?time5))
;=>
;    (if(<= (- ?time4 ?time3) 3); Si la activación de habitación 2 se ha producido 3 segundos o menos después de la desactivación de habitación 1
;        then
;        (assert (accion pulsador_luz ?Hab apagar)); Apagamos la luz de habitación 1
;    )
;)
;
;(defrule SeHaIdoAColindanteNecesarioPasar
;    (Habitacion ?Hab) ; Existe habitación 1
;    (Habitacion ?Hab1) ; Existe habitación 2
;    (Manejo_inteligente_luces ?Hab) ; La habitación 1 es inteligente
;    (necesario_pasar ?Hab ?) ; La habitación tiene una salida
;    (posible_pasar ?Hab ?Hab1) ; Las habitaciones son colindantes
;    (ultimo_registro estadoluz ?Hab ?time2) ; La habitación 1 está encendida
;    (valor_registrado ?time2 estadoluz ?Hab on)
;    (ultima_activacion movimiento ?Hab ?time) ; Hay una desactivación de movimiento posterior a la última activación
;    (ultima_desactivacion movimiento ?Hab ?time3&:(> ?time3 ?time))
;    (ultima_desactivacion movimiento ?Hab1 ?time5) ; Hay una activación de movimiento en la habitación 2 posterior a su última desactivación
;    (ultima_activacion movimiento ?Hab1 ?time4&:(>= ?time4 ?time5))
;=>
;    (if(> ?time4 ?time3); Si la activación de habitación 2 se ha producido después de la desactivación de habitación 1
;        then
;        (assert (accion pulsador_luz ?Hab apagar)); Apagamos la luz de habitación 1
;    )
;)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; -------------------------------------- 3B ------------------------------------------------- ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule EncenderLuzInteligente
    (Habitacion ?Hab) ; Existe la habitación
    (Manejo_inteligente_luces ?Hab) ; La habitación es inteligente
    (ultima_activacion movimiento ?Hab ?time1) ; Ha habido una activación reciente
    (ultima_desactivacion movimiento ?Hab ?time&:(>= ?time1 ?time)) ; Esta activación ha sido después de la última desactivación
    (ultimo_registro estadoluz ?Hab ?time2) ; El último registro de la luz es
    (valor_registrado ?time2 estadoluz ?Hab off) ; Apagada
    (ultimo_registro luminosidad ?Hab ?time3); El último registro de luminosidad
    (valor_registrado ?time3 luminosidad ?Hab ?lux)
    (luminosidad_minima ?Hab ?lux2&:(<= ?lux ?lux2)) ; Está por debajo del mínimo
=>
    ; Encendemos la luz
    (assert (accion pulsador_luz ?Hab encender))
)

(defrule ApagarLuzInteligentePorLuminosidad
    (Habitacion ?Hab) ; Existe la habitación
    (Manejo_inteligente_luces ?Hab) ; La habitación es inteligente
    (ultimo_registro estadoluz ?Hab ?time2); El último registro de la luz es
    (valor_registrado ?time2 estadoluz ?Hab on) ; Encendida
    (ultimo_registro luminosidad ?Hab ?time3); El último registro de luminosidad
    (valor_registrado ?time3 luminosidad ?Hab ?lux)
    (luminosidad_maxima ?Hab ?lux2&:(>= ?lux ?lux2)); Está por encima del máximo
=>
    ; Apagamos la luz
    (assert (accion pulsador_luz ?Hab apagar))
)

(defrule ApagarLuzInteligente
    (Habitacion ?Hab) ; Existe la habitación
    (Manejo_inteligente_luces ?Hab); La habitación es inteligente
    (ultimo_registro estadoluz ?Hab ?time2) ; El último registro de la luz es
    (valor_registrado ?time2 estadoluz ?Hab on) ; Encendida
    (ultima_desactivacion movimiento ?Hab ?time3) ; Ha habido una desactivación que es más reciente que la última activación
    (ultima_activacion movimiento ?Hab ?time4&:(>= ?time3 ?time4))
    (ultimo_registro movimiento ?Hab ?time5&:(>= (- ?time5 ?time3) 10)) ; Si no se detecta movimiento tras 10 segundos desde la desactivación
    (valor_registrado ?time5 movimiento ?Hab off)
=>
    ; Apagamos la luz
    (assert (accion pulsador_luz ?Hab apagar))
)

(defrule SeHaIdoAColindante
    (Habitacion ?Hab) ; Existe habitación 1
    (Habitacion ?Hab1) ; Existe habitación 2
    (Manejo_inteligente_luces ?Hab) ; La habitación 1 es inteligente
    (posible_pasar ?Hab ?Hab1) ; Las habitaciones son colindantes
    (ultimo_registro estadoluz ?Hab ?time2) ; La habitación 1 está encendida
    (valor_registrado ?time2 estadoluz ?Hab on)
    (ultima_activacion movimiento ?Hab ?time) ; Hay una desactivación de movimiento posterior a la última activación
    (ultima_desactivacion movimiento ?Hab ?time3&:(> ?time3 ?time))
    (ultima_desactivacion movimiento ?Hab1 ?time5) ; Hay una activación de movimiento en la habitación 2 posterior a su última desactivación
    (ultima_activacion movimiento ?Hab1 ?time4&:(>= ?time4 ?time5))
=>
    (if(<= (- ?time4 ?time3) 3); Si la activación de habitación 2 se ha producido 3 segundos o menos después de la desactivación de habitación 1
        then
        (assert (accion pulsador_luz ?Hab apagar)); Apagamos la luz de habitación 1
    )
)