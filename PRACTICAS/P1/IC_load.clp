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
        (Habitacion ?Hab)
=>
	(assert (habitacion_interior ?Hab)))