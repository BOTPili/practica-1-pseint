Algoritmo sin_titulo
	TurnosSocios <- 0
	TurnosParticulares <- 0
	consultaparticular <- 400
	consultasocio <- 0
	TotalDerma <- 0
	TotalCardio <- 0
	TotalNeumo <- 0
	TotalTrauma <- 0
	TurnosDermo <- 0
	TurnosCardio <- 0
	TurnosNeumo <- 0
	TurnosTrauma <- 0
	TotalRecaudado <- 0
	TotalTurnos <- 0
	BanderaEdadPaciente <- 0
	Escribir 'ingrese Condici�n: s - socio | p - particular'
	Leer condicion
	Mientras condicion<>'e' Hacer
		Escribir 'Ingrese Nombre del Paciente'
		Leer Paciente
		Escribir 'Ingrese Edad del Paciente'
		Leer edad
		Si BanderaEdadPaciente==0 Entonces
			BanderaEdadPaciente <- 1
			EdadMinima <- edad
		SiNo
			Si edad<EdadMinima Entonces
				EdadMinima <- edad
			FinSi
		FinSi
		Repetir
			Escribir 'Elgija especialidad: 1 - Dermatolog�a / 2 - Cardiolog�a / 3 - Neumonolog�a / 4 - Traumatolog�a'
			Leer especialidad
			Segun especialidad  Hacer
				1:
					Si condicion=='s' Entonces
						DermatologiaS <- consultasocio
						Escribir 'El valor de la consulta es: ',DermatologiaS,'$'
						TurnosSocios <- TurnosSocios+1
					SiNo
						DermatologiaP <- consultaparticular
						Escribir 'El valor de la consulta es: ',DermatologiaP,'$'
						TurnosParticulares <- TurnosParticulares+1
						TurnosDermo <- TurnosDermo+1
					FinSi
				2:
					Si condicion=='s' Entonces
						CardiologiaS <- consultasocio
						Escribir 'El valor de la consulta es: ',CardiologiaS,'$'
						TurnosSocios <- TurnosSocios+1
					SiNo
						CardiologiaP <- consultaparticular
						Escribir 'El valor de la consulta es: ',CardiologiaP,'$'
						TurnosParticulares <- TurnosParticulares+1
						TurnosCardio <- TurnosCardio+1
					FinSi
				3:
					Si condicion=='s' Entonces
						Neumonologias <- consultasocio
						Escribir 'El valor de la consulta es: ',Neumonologias,'$'
						TurnosSocios <- TurnosSocios+1
					SiNo
						Neumonologiap <- consultaparticular
						Escribir 'El valor de la consulta es: ',Neumonologiap,'$'
						TurnosParticulares <- TurnosParticulares+1
						TurnosNeumo <- TurnosNeumo+1
					FinSi
				4:
					Si condicion=='s' Entonces
						Traumatologias <- consultasocio
						Escribir 'El valor de la consulta es: ',Traumatologias,'$'
						TurnosSocios <- TurnosSocios+1
					SiNo
						Traumatologiap <- consultaparticular
						Escribir 'El valor de la consulta es: ',Traumatologiap,'$'
						TurnosParticulares <- TurnosParticulares+1
						TurnosTrauma <- TurnosTrauma+1
					FinSi
			FinSegun
			Escribir '�Quiere elegir otra especialidad? Si o No'
			Leer eleccion
		Hasta Que eleccion=='no'
		Escribir 'ingrese condici�n'
		Leer condicion
	FinMientras
	TotalDermo <- DermatologiaP*TurnosDermo
	TotalCardio <- CardiologiaP*TurnosCardio
	TotalNeumo <- Neumonologiap*TurnosNeumo
	TotalTrauma <- Traumatologiap*TurnosTrauma
	TotalRecaudado <- TotalDermo+TotalCardio+TotalNeumo+TotalTrauma
	TotalTurnos <- TurnosParticulares+TurnosSocios
	Escribir 'La cantidad de turnos particulares fue: ',TurnosParticulares
	Escribir 'La cantidad de turnos Socios fue: ',TurnosSocios
	Escribir 'El total de los turnos dados es: ',TotalTurnos
	Escribir 'Total Dermatolog�a: ',TotalDermo,'$'
	Escribir 'Total Cardiolog�a: ',TotalCardio,'$'
	Escribir 'Total Neumonolog�a: ',TotalNeumo,'$'
	Escribir 'Total Traumatolog�a: ',TotalTrauma,'$'
	Escribir 'El total recaudado de todos los turnos es: ',TotalRecaudado,'$'
	Escribir 'El Paciente de menor edad tiene: ',EdadMinima,' a�os'
FinAlgoritmo
