;::::::::::: INTRODUCCION DE HABITACIONES :::::::::::
(assert (Habitacion Garaje))
(assert (Habitacion Entrada))
(assert (Habitacion Ropero))
(assert (Habitacion Comedor))
(assert (Habitacion Salon1))
(assert (Habitacion Salon2))
(assert (Habitacion Cocina))
(assert (Habitacion Baño))
(assert (Habitacion Dormitorio))
(assert (Habitacion Pasillo))

;::::::::::: INTRODUCCION DE PUERTAS :::::::::::
(assert (Puerta Pt1))
(assert (Puerta Pt2))
(assert (Puerta Pt3))
(assert (Puerta Pt4))
(assert (Puerta Pt5))
(assert (Puerta Pt6))
(assert (Puerta Pt7))
(assert (Puerta Pt8))

;::::::::::: INTRODUCCION DE PASOS :::::::::::
(assert (Paso Ps1))
(assert (Paso Ps2))
(assert (Paso Ps3))
(assert (Paso Ps4))
(assert (Paso Ps5))
(assert (Paso Ps6))

;::::::::::: INTRODUCCION DE VENTANAS :::::::::::
(assert (Ventana V1))
(assert (Ventana V2))
(assert (Ventana V3))
(assert (Ventana V4))
(assert (Ventana V5))
(assert (Ventana V6))
(assert (Ventana V7))

;::::::::::: ASOCIACION DE PUERTAS Y HABITACIONES (PteH - Puertas en Habitacion) :::::::::::
(assert (PteH Garaje Pt6))
(assert (PteH Garaje Pt8))
(assert (PteH Entrada Pt2))
(assert (PteH Entrada Pt1))
(assert (PteH Ropero Pt2))
(assert (PteH Salon2 Pt3))
(assert (PteH Baño Pt4))
(assert (PteH Dormitorio Pt5))
(assert (PteH Pasillo Pt6))
(assert (PteH Pasillo Pt7))
(assert (PteH Pasillo Pt4))
(assert (PteH Pasillo Pt5))

;::::::::::: ASOCIACION DE PASOS Y HABITACIONES (PseH - Pasos en Habitacion) :::::::::::
(assert (PseH Entrada Ps1))
(assert (PseH Entrada Ps6))
(assert (PseH Comedor Ps5))
(assert (PseH Comedor Ps6))
(assert (PseH Salon1 Ps1))
(assert (PseH Salon1 Ps2))
(assert (PseH Salon2 Ps2))
(assert (PseH Salon2 Ps3))
(assert (PseH Cocina Ps3))
(assert (PseH Cocina Ps4))
(assert (PseH Cocina Ps5))
(assert (PseH Pasillo Ps4))

;::::::::::: ASOCIACION DE VENTANAS Y HABITACIONES (VeH - Ventanas en Habitacion) :::::::::::
(assert (VeH Garaje V1))
(assert (VeH Comedor V2))
(assert (VeH Salon1 V3))
(assert (VeH Salon2 V4))
(assert (VeH Salon2 V5))
(assert (VeH Cocina V6))
(assert (VeH Dormitorio V7))

;::::::::::: REGLA: SE PUEDE PASAR DIRECTAMENTE DE UNA HABITACION A OTRA? :::::::::::
(defrule Conecta_Puerta
	(PteH ?Habitacion1 ?Pt)
	(PteH ?Habitacion2&~?Habitacion1 ?Pt)
=>
	(assert (conecta_puerta ?Habitacion1 ?Habitacion2)))

(defrule Conecta_Paso
	(PseH ?Habitacion1 ?Ps)
	(PseH ?Habitacion2&~?Habitacion1 ?Ps)
=>
	(assert (conecta_paso ?Habitacion1 ?Habitacion2)))

(defrule Posible_Pasar
	(or (conecta_puerta ?Hab1 ?Hab2)
		(conecta_paso ?Hab1 ?Hab2))
=>
	(assert (posible_pasar ?Hab1 ?Hab2)))

;::::::::::: REGLA: ES NECESARIO PASAR POR OTRA HABITACIÓN OBLIGATORIAMENTE PARA LLEGAR A OTRA? :::::::::::
(defrule Necesario_Pasar
	(posible_pasar ?Hab1 ?Hab2)
	(not (posible_pasar ?Hab1 ?Hab3&~?Hab2))
=>
	(assert (necesario_pasar ?Hab1 ?Hab2)))

;::::::::::: REGLA: ES UNA HABITACION INTERIOR? (CARECE DE VENTANAS?) :::::::::::
(defrule Habitacion_Interior
	(and
		(Habitacion ?Hab)
		(not(VeH ?Hab $?))
	)
		
=>
	(assert (habitacion_interior ?Hab)))