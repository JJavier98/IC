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
	(valor movimiento Salon1 on)
	(valor luminosidad Salon1 750)
	(valor estadoluz Salon1 on)
	(valor movimiento Salon2 on)
	(valor luminosidad Salon2 750)
	(valor estadoluz Salon2 on)
	(valor movimiento Comedor on)
	(valor luminosidad Comedor 750)
	(valor estadoluz Comedor on)
	(valor movimiento Pasillo on)
	(valor luminosidad Pasillo 750)
	(valor estadoluz Pasillo on)
	(valor movimiento Dormitorio on)
	(valor luminosidad Dormitorio 750)
	(valor estadoluz Dormitorio on)
	(valor movimiento Ropero on)
	(valor luminosidad Ropero 750)
	(valor estadoluz Ropero on)
	(valor movimiento Cocina on)
	(valor luminosidad Cocina 750)
	(valor estadoluz Cocina on)
	(valor movimiento Garaje on)
	(valor luminosidad Garaje 750)
	(valor estadoluz Garaje on)
	(valor movimiento Baño on)
	(valor luminosidad Baño 750)
	(valor estadoluz Baño on)
	(valor movimiento Entrada on)
	(valor luminosidad Entrada 750)
	(valor estadoluz Entrada on)
	)

;::::::::::: VALORES DE SENSORES QUE ME TIENEN QUE PROPORCIONAR - ESTOS SON DE PRUEBA ::::::::::
(deffacts UltimosRegistradosPorDefectoParaQueFuncioneEsto
	(ultimo_registro movimiento Entrada -4)
	(ultimo_registro luminosidad Entrada -4)
	(ultimo_registro estadoluz Entrada -4)
	(ultimo_registro movimiento Comedor -4)
	(ultimo_registro luminosidad Comedor -4)
	(ultimo_registro estadoluz Comedor -4)
	(ultimo_registro movimiento Salon1 -4)
	(ultimo_registro luminosidad Salon1 -4)
	(ultimo_registro estadoluz Salon1 -4)
	(ultimo_registro movimiento Salon2 -4)
	(ultimo_registro luminosidad Salon2 -4)
	(ultimo_registro estadoluz Salon2 -4)
	(ultimo_registro movimiento Dormitorio -4)
	(ultimo_registro luminosidad Dormitorio -4)
	(ultimo_registro estadoluz Dormitorio -4)
	(ultimo_registro movimiento Cocina -4)
	(ultimo_registro luminosidad Cocina -4)
	(ultimo_registro estadoluz Cocina -4)
	(ultimo_registro movimiento Baño -4)
	(ultimo_registro luminosidad Baño -4)
	(ultimo_registro estadoluz Baño -4)
	(ultimo_registro movimiento Pasillo -4)
	(ultimo_registro luminosidad Pasillo -4)
	(ultimo_registro estadoluz Pasillo -4)
	(ultimo_registro movimiento Garaje -4)
	(ultimo_registro luminosidad Garaje -4)
	(ultimo_registro estadoluz Garaje -4)
	(ultimo_registro movimiento Ropero -4)
	(ultimo_registro luminosidad Ropero -4)
	(ultimo_registro estadoluz Ropero -4))

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
	;(estado_habitacion Comedor vacia)
	;(estado_habitacion Entrada vacia)
	;(estado_habitacion Salon1 vacia)
	;(estado_habitacion Salon2 vacia)
	;(estado_habitacion Dormitorio vacia)
	;(estado_habitacion Cocina vacia)
	;(estado_habitacion Baño vacia)
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
	     (bind ?rv (string-to-field  (system-string "date +%M")))	  )
   ?rv)
   
;;;;;; Funcion que devuelve el nº de segundos de la hora del sistema, si en el sistema son las ?h:?m:?s, devuelve ?s  ;;;;;;;;;;;;
   
   (deffunction segundossistema ()
   (if (= ?*SO* 1) 
       then
          (bind ?rv (integer (string-to-field (sub-string 7 8  (system-string "@ECHO.%time:~0,8%")))))
	   else 
	     (bind ?rv (string-to-field  (system-string "date +%S")))	  )
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
        (Habitacion ?Hab1)
        (Habitacion ?Hab2)
        (Habitacion ?Hab3)
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
	(ultimo_registro ?tipo ?Hab ?t1) ; necesitamos saber el timepo del ultimo registrado para obtener su valor
	(valor_registrado ?t1 ?tipo ?Hab off) ; valor registrado que coincide con el ultimo registro
	(valor_registrado ?t2&~?t1 ?tipo ?Hab $?) ; demás valores de valor_registrado
	(valor_registrado ?t4&:(and (>= ?t4 ?t2) (< ?t4 ?t1)) ?tipo ?Hab on); valor registrado inmediatamente anterior
=>
	(assert (ultima_desactivacion ?tipo ?Hab ?t1) ) )

(defrule Off2On
	(Habitacion ?Hab) ; existe la habitacion
	(ultimo_registro ?tipo ?Hab ?t1) ; necesitamos saber el tiempo del ultimo registrado para obtener su valor
	(valor_registrado ?t1 ?tipo ?Hab on) ; valor registrado que coincide con el ultimo registro
	(valor_registrado ?t2&~?t1 ?tipo ?Hab $?) ; demás valores de valor_registrado
	(valor_registrado ?t4&:(and (>= ?t4 ?t2) (< ?t4 ?t1)) ?tipo ?Hab off); valor registrado inmediatamente anterior
=>
	(assert (ultima_activacion ?tipo ?Hab ?t1) ) )

(defrule preInforme
	(Habitacion ?Hab) ; existe la habitación
	?Borrar <- (informe ?Hab) ; borramos el hecho que nos pide el informe
	(valor_registrado ?t1 ? ?Hab ?) ; cogemos el conjunto de todos los valores registrados
	(valor_registrado ?t2&:(>= ?t2 ?t1) ?tipo2 ?Hab ?value2) ; cogemos el valor registrado con mayor tiempo, es decir, el más reciente
=>
	(assert(preInf ?t2 ?tipo2 ?Hab ?value2) ) ; añadimos el hecho de que hemos empezado el preinforme
	(retract ?Borrar) ; Borramos el hecho que pide el informe
	(printout t "INFORME: " crlf) ; imprimimos el informe
	(printout t crlf "Tiempo: " ?t2 " Tipo: " ?tipo2 " Habitación: " ?Hab " Valor: " ?value2))

(defrule Informe
	(Habitacion ?Hab) ; existe la habitación
	?Borrar <- (preInf ?t1 ?tipo ?Hab ?value) ; borramos el último hecho de preinforme generado
	(valor_registrado ?t2&~?t1 ?tipo2 ?Hab ?value2) ; cogemos todo el conjunto de valores registrados que no cincidan con el de preinforme
	(valor_registrado ?t3&:(and (>= ?t3 ?t2) (< ?t3 ?t1)) ?tipo3 ?Hab ?value3) ; cogemos el más reciente de los valores registrados que sea menor que preinforme
=>
	(retract ?Borrar) ; borramos el preinforme
	(assert (preInf ?t3 ?tipo3 ?Hab ?value3)) ; incluimos un preinforme con el nuevo valor
	(printout t crlf "Tiempo: " ?t3 " Tipo: " ?tipo3 " Habitación: " ?Hab " Valor: " ?value3) ; inmprimimos el informe
	)

(defrule posInforme
	(Habitacion ?Hab) ; existe la habitación
	?Borrar <- (preInf ?t1 ?tipo ?Hab ?value) ; 
=>
	(retract ?Borrar)
)

;::::::::::: REGLA: INTERRUPTORES :::::::::::
(defrule InterruptorCambiarAOff
	(Habitacion ?Hab)
	?Borrar <- (accion pulsador_luz ?Hab cambiar)
	(ultimo_registro estadoluz ?Hab on)
=>
	(assert (valor estadoluz ?Hab off))
	)

(defrule InterruptorCambiarAOn
	(Habitacion ?Hab)
	?Borrar <- (accion pulsador_luz ?Hab cambiar)
	(ultimo_registro estadoluz ?Hab off)
=>
	(assert (valor estadoluz ?Hab on))
	)

(defrule InterruptorApagar
	(Habitacion ?Hab)
	?Borrar <- (accion pulsador_luz ?Hab apagar)
=>
	(assert (valor estadoluz ?Hab off))
	)

(defrule InterruptorEncender
	(Habitacion ?Hab)
	?Borrar <- (accion pulsador_luz ?Hab encender)
=>
	(assert (valor estadoluz ?Hab on))
	)

