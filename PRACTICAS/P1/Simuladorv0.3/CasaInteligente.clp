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

;::::::::::: VALORES DE SENSORES QUE ME TIENEN QUE PROPORCIONAR - ESTOS SON DE PRUEBA ::::::::::
(deffacts Sensores
        (valor movimiento Salon1 off)
        (valor luminosidad Salon1 400)
        (valor estadoluz Salon1 off)
        (valor movimiento Salon2 off)
        (valor luminosidad Salon2 400)
        (valor estadoluz Salon2 off)
        (valor movimiento Comedor off)
        (valor luminosidad Comedor 300)
        (valor estadoluz Comedor off)
        (valor movimiento Pasillo off)
        (valor luminosidad Pasillo 400)
        (valor estadoluz Pasillo off)
        (valor movimiento Dormitorio off)
        (valor luminosidad Dormitorio 600)
        (valor estadoluz Dormitorio off)
        (valor movimiento Ropero off)
        (valor luminosidad Ropero 400)
        (valor estadoluz Ropero off)
        (valor movimiento Cocina off)
        (valor luminosidad Cocina 400)
        (valor estadoluz Cocina off)
        (valor movimiento Garaje off)
        (valor luminosidad Garaje 400)
        (valor estadoluz Garaje off)
        (valor movimiento Baño off)
        (valor luminosidad Baño 300)
        (valor estadoluz Baño off)
        (valor movimiento Entrada off)
        (valor luminosidad Entrada 500)
        (valor estadoluz Entrada off)
        )

;::::::::::: VALORES DE SENSORES QUE ME TIENEN QUE PROPORCIONAR - ESTOS SON DE PRUEBA ::::::::::
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

;::::::::::: VALORES DE SENSORES QUE ME TIENEN QUE PROPORCIONAR - ESTOS SON DE PRUEBA ::::::::::
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

;;;; DEPENDERA DEL SISTEMA OPERATIVO (elegir comentando o descomentando a continuacion ;;;;;;;

(defglobal ?*SO* = 1)              ;;; Windows (valor 1)    comentar si tu SO es linux o macos

;(defglobal ?*SO* = 0)             ;;; Linux o MacOs (valor 0)    descoemntar si tu SO es linux o macos


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

;::::::::::: REGLA: SE PUEDE PASAR DIRECTAMENTE DE UNA HABITACION A OTRA? :::::::::::
(defrule ConectaPuerta
        (PteH ?Habitacion1 ?Pt)
        (PteH ?Habitacion2&~?Habitacion1 ?Pt)
        (Habitacion ?Habitacion1)
        (Habitacion ?Habitacion2)
        (Puerta ?Pt)
=>
        (assert (conecta_puerta ?Habitacion1 ?Habitacion2)))

(defrule ConectaPaso
        (PseH ?Habitacion1 ?Ps)
        (PseH ?Habitacion2&~?Habitacion1 ?Ps)
        (Habitacion ?Habitacion1)
        (Habitacion ?Habitacion2)
        (Paso ?Ps)
=>
        (assert (conecta_paso ?Habitacion1 ?Habitacion2)))

(defrule PosiblePasar
        (or (conecta_puerta ?Hab1 ?Hab2)
                (conecta_paso ?Hab1 ?Hab2))
        (Habitacion ?Hab1)
        (Habitacion ?Hab2)
=>
        (assert (posible_pasar ?Hab1 ?Hab2)))

;::::::::::: REGLA: ES NECESARIO PASAR POR OTRA HABITACIÓN OBLIGATORIAMENTE PARA LLEGAR A OTRA? :::::::::::
(defrule NecesarioPasar
        (posible_pasar ?Hab1 ?Hab2)
        (not (posible_pasar ?Hab1 ?Hab3&~?Hab2))
        (not (posible_pasar ?Hab4&~?Hab1 ?Hab2))
        (Habitacion ?Hab1)
        (Habitacion ?Hab2)
        (Habitacion ?Hab3)
        (Habitacion ?Hab4)
=>
        (assert (necesario_pasar ?Hab1 ?Hab2)))

;::::::::::: REGLA: ES UNA HABITACION INTERIOR? (CARECE DE VENTANAS?) :::::::::::
(defrule HabitacionInterior
        (Habitacion ?Hab)
        (not(VeH ?Hab $?))
=>
        (assert (habitacion_interior ?Hab)))

;::::::::::: REGLA: AÑADIR TIEMPO A LOS HECHOS ENVIADOS POR SENSORES Y ACTUALIZAR EL ULTIMO_REGISTRO :::::::::::
(defrule CambioDetectado
        (Habitacion ?Hab) ; comprobar que existe la habitación
        ?Borrar <- (valor ?tipo ?Hab ?value) ; guardar el índice del hecho que ha activado el cambio para borrarlo
        ?Borrar1 <- (ultimo_registro ?tipo ?Hab ?time) ; guardar el índice del ultimo_registro para borrarlo y así, actualizarlo
=>
        (bind ?Tiempo (totalsegundos (horasistema) (minutossistema) (segundossistema)) ) ; guardamos en una variable la hora del sistema para que coincida en todos los asserts
        (assert (valor_registrado ?Tiempo ?tipo ?Hab ?value)) ; registramos el nuevo valor registrado por el sensor
        (assert (ultimo_registro ?tipo ?Hab ?Tiempo )) ; actualizamos el último registro del sensor
        (retract ?Borrar) ; borramos el hecho de activación
        (retract ?Borrar1)) ; borramos el anterior registrado

;::::::::::: REGLA: INDICAR ULTIMA ACTIVACION O DESACTIVACION :::::::::::
(defrule On2Off
        (Habitacion ?Hab) ; existe la habitacion
        ?Borrar <- (ultima_desactivacion movimiento ?Hab ?t)
        (ultima_activacion movimiento ?Hab ?time2 &: (> ?time2 ?t))
        (ultimo_registro movimiento ?Hab ?t1&:(> ?t1 ?time2)) ; necesitamos saber el timepo del ultimo registrado para obtener su valor
        (valor_registrado ?t1 movimiento ?Hab off) ; valor registrado que coincide con el ultimo registro
        (valor_registrado ?t2 movimiento ?Hab $?) ; demás valores de valor_registrado
        (valor_registrado ?t4&:(and (>= ?t4 ?t2) (< ?t4 ?t1)) movimiento ?Hab on); valor registrado inmediatamente anterior
=>
        (assert (ultima_desactivacion movimiento ?Hab ?t1) )
        (retract ?Borrar) )

(defrule Off2On
        (Habitacion ?Hab) ; existe la habitacion
        ?Borrar <- (ultima_activacion movimiento ?Hab ?t)
        (ultima_desactivacion movimiento ?Hab ?time2 &: (> ?time2 ?t))
        (ultimo_registro movimiento ?Hab ?t1&:(>= ?t1 ?time2)) ; necesitamos saber el tiempo del ultimo registrado para obtener su valor        
        (valor_registrado ?t1 movimiento ?Hab on) ; valor registrado que coincide con el ultimo registro
        (valor_registrado ?t2 movimiento ?Hab $?) ; demás valores de valor_registrado
        (valor_registrado ?t4&:(and (>= ?t4 ?t2) (< ?t4 ?t1)) movimiento ?Hab off); valor registrado inmediatamente anterior

=>
        (assert (ultima_activacion movimiento ?Hab ?t1) )
        (retract ?Borrar) )

(defrule duplicaInforme
        (informe ?Hab)
        (valor_registrado ?time ?tipo ?Hab ?value)
        (not(no_procesado ?time ?tipo ?Hab ?value))
=>
        (assert (no_procesado ?time ?tipo ?Hab ?value))
        )

(defrule finDuplica
        ?Borrar <- (informe ?Hab)
        (not
                (and
                        (valor_registrado ?time ?tipo ?Hab ?value)
                        (not (no_procesado ?time ?tipo ?Hab ?value))
                )
        )
=>
        (retract ?Borrar)
        (printout t "INFORME: " crlf)
        )

(defrule imprimeInforme
        (not (informe ?Hab))
        ?Borrar <- (no_procesado ?t1 ?tipo ?Hab ?v)
        (not (no_procesado ?t2 &: (> ?t2 ?t1) ? ?Hab ?))
=>
        (printout t "Tiempo: " ?t1 " Tipo: " ?tipo " Habitación: " ?Hab " Valor: " ?v crlf)
        (retract ?Borrar)
        )

;::::::::::: REGLA: INTERRUPTORES :::::::::::
(defrule InterruptorCambiarAOff
        (Habitacion ?Hab)
        ?Borrar <- (accion pulsador_luz ?Hab cambiar)
        (ultimo_registro estadoluz ?Hab on)
=>
        (printout t crlf "HE LLEGADO AQUI")
        (assert (valor estadoluz ?Hab off))
        (retract ?Borrar)
        )

(defrule InterruptorCambiarAOn
        (Habitacion ?Hab)
        ?Borrar <- (accion pulsador_luz ?Hab cambiar)
        (ultimo_registro estadoluz ?Hab off)
=>
        (printout t crlf "HE LLEGADO AQUI 2")
        (assert (valor estadoluz ?Hab on))
        (retract ?Borrar)
        )

(defrule InterruptorApagar
        (Habitacion ?Hab)
        ?Borrar <- (accion pulsador_luz ?Hab apagar)
=>
        (printout t crlf "HE LLEGADO AQUI 3")
        (assert (valor estadoluz ?Hab off))
        (retract ?Borrar)
        )

(defrule InterruptorEncender
        (Habitacion ?Hab)
        ?Borrar <- (accion pulsador_luz ?Hab encender)
=>
        (printout t crlf "HE LLEGADO AQUI 4")
        (assert (valor estadoluz ?Hab on))
        (retract ?Borrar)
        )

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
    (ultima_desactivacion movimiento ?Hab1 ?time5)
    (ultima_activacion movimiento ?Hab1 ?time4&:(>= ?time4 ?time5))
=>
    (if(<= (- ?time4 ?time3) 3)
        then
        (assert (accion pulsador_luz ?Hab apagar))
    )
)