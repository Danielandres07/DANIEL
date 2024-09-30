
	Funcion opciones <- menu 
		Escribir 'Menu de opciones'
		Escribir '1. Registrar estudiantes '
		Escribir '2. Asignar notas parciales (3)'
		Escribir '3. Registrar numeros de inasistencia'
		Escribir '4. Mostrar lista de estudiantes'
		Escribir '5. Ver nota final'
		Escribir 'Por favor escoge uno'
		leer opciones
	Fin Funcion
	
	Funcion Estudiante<-Registro(code,nombre)
		
		Escribir "registrar estudiantes del (1 al 10)'
		leer cant
		
		Si (cant>0) Y (cant<=10) Entonces
			
			Para i=1 Hasta cant Con Paso 1 Hacer
				
				Escribir 'Ingrese el codigo del estudiante ', i
				leer code
				Escribir 'Ingresa el nombre del Estudiante ', i
				leer nombre
			Fin Para
		SiNo
			Escribir 'Ingrese un valor valido de 1 a 10'
		FinSi
		
	Fin Funcion
	
	Funcion Asignar<-Notas_parcial(nota)
		Escribir 'Indiqueme las (3) notas parciales'
		leer nota1
		leer nota2
		leer nota3
		
	Fin Funcion
	
	Funcion Registrar<-inasistencia(nombre,code)
		Escribir " Registrar inasistencia"
		leer inas
		
		
	Fin Funcion
	
	Funcion Muestra<-Lista_estudiante(nombre ,code)
		
		Para i<-0 Hasta i Con Paso 1 Hacer
			Escribir 'Nombre del estudiante :' , nombre
			Escribir 'Codigo del estudiante: ', code
			
			
		FinPara
		
		
	Fin Funcion
	
	Funcion Ver<- nota_final(nombre, code)
		Escribir "su nota final es "  
		
	Fin Funcion
	
	
	Algoritmo ll

		Repetir
		opc<-menu
			Segun opc Hacer
				1:
					Estudiantes <- Registro(code,nombre )
				2:
					Asignar <- Notas_parcial(nota)
				3:
					Registrar <- inasistencia(nombre,code)
				4:
					Muestra <- Lista_estudiante(nombre,code )
				5: 
					Ver<- nota_final(nombre,code)
					
			Fin Segun 
	Escribir 'Si desea continuar precione (8) si no quiere continuar precione (0)'
			leer opc
			si opc=0 Entonces
				Escribir 'Saliendo , GRACIAS '
			FinSi
		Hasta Que opc=0
FinAlgoritmo
