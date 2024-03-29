/*
	Instituto Tecnológico de Costa Rica
	Escuela de Computación
	Ingeniería en Computación
	Lenguajes de Programación
	
	Estudiante: Joshua Mata Araya
	Carnet: 2014079095
	Correo: joshuamataa@gmail.com
	Descripción: Esta es una implementación de fractales en prolog. 
	___________________________________________________________________________
	ANALISIS DE RESULTADOS
	
	Todas las relaciones se han definido con éxito.
	Se logró implementar los siguientes fractales:
		-copodenieve
		-corbatin 
		-estrella.
		-tapeteexterno
		-tapeteinterno
		-panal
		-aros
		-tonel
		-star
		-inside	
		-tapetePanal
	NOTA: De cada uno de los fractales anteriores, se implementó la versión
		monocromática, con colores definidos y con colores aleatorios.
	
	___________________________________________________________________________
	En el código se encuentran en el orden mencionado, primero se encuentra 
	la versión monocromática de ellos, luego la versión a colores (se
	identifican con la palabra "Color" al final del nombre, ej: starColor)
	y posteriormente la versión con colores random de los mismos (se 
	identifican con la palabra "Random" al final del nombre, 
	ej: copodenieveRandom).
	
	
	___________________________________________________________________________
	MANUAL DE USUARIO
	
	Para ejecutar cualquiera de los fractales, en swi-prolog hay que
	escribir la relación con la siguiente sintaxis:
			nombre(nivel,tamaño).
	
	Es necesario tener todos los archivos de la biblioteca de Prologo en 
	la misma ubicación del archivo, para esto el proyecto se encuentra en un
	archivo comprimido, si se descomprime todo en un mismo lugar, el programa
	funcionará correctamente. En caso de no tener la biblioteca, se puede
	descargar del siguiente enlace: 
		https://www.dropbox.com/s/s1kfqejsv1t83qe/PROLOGO.zip?dl=0
	
	Como nombre se pueden pueden especificar los siguientes fractales:
		-copodenieve
		-corbatin 
		-estrella.
		-tapeteexterno
		-tapeteinterno
		-panal
		-aros
		-tonel
		-star
		-inside	
		-tapetePanal
	Se puede agregar la parabra "Color" al final del nombre para poder ver 
	el fractal con colores o "Random" para ver la función con colores random.
	
	Nivel y valor son dos números, se espera que el nivel no sobrepase
	el numero 5, pero esto depende de la capacidad de procesamiento del 
	computador, y que el tamaño no sobrepase a 500, pero esto depende 
	del tamaño de la pantalla.
*/

/*
___________________________________________________________________________
	VERSION MONOCROMÁTICA
*/
copodenieveAux(0,Tam):-
	forward(Tam).
	
copodenieveAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	copodenieveAux(Lvl,Seg),
	left(60),
	copodenieveAux(Lvl,Seg),
	right(120),
	copodenieveAux(Lvl,Seg),
	left(60),
	copodenieveAux(Lvl,Seg).
	
copodenieve(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	copodenieveAux(Lvl,Tam),
	right(120),
	copodenieveAux(Lvl,Tam),
	right(120),
	copodenieveAux(Lvl,Tam),
	right(120).
	
corbatinAux(0,Tam):-
	forward(Tam).
	
corbatinAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	left(60),
	corbatinAux(Lvl,Seg),
	right(120),
	corbatinAux(Lvl,Seg),
	corbatinAux(Lvl,Seg),
	left(120),
	corbatinAux(Lvl,Seg),
	right(60).
	
corbatin(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	corbatinAux(Lvl,Tam),
	right(90),
	corbatinAux(Lvl,Tam),
	right(90),
	corbatinAux(Lvl,Tam),
	right(90),
	corbatinAux(Lvl,Tam).
	
estrellaAux(0,Tam):-
	forward(Tam).
	
estrellaAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	right(30),
	estrellaAux(Lvl,Seg),
	left(60),
	estrellaAux(Lvl,Seg),
	right(30).
	
estrella(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	right(-45),
	estrellaAux(Lvl,Tam),
	right(90),
	estrellaAux(Lvl,Tam),
	right(90),
	estrellaAux(Lvl,Tam),
	right(90),
	estrellaAux(Lvl,Tam).	

tapeteexternoAux(0,Tam):-
	forward(Tam).
	
tapeteexternoAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	tapeteexternoAux(Lvl,Seg),
	left(90),
	tapeteexternoAux(Lvl,Seg),
	right(90),
	tapeteexternoAux(Lvl,Seg),
	right(90),
	tapeteexternoAux(Lvl,Seg),
	left(90),
	tapeteexternoAux(Lvl,Seg).
	
tapeteexterno(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	tapeteexternoAux(Lvl,Tam),
	right(90),
	tapeteexternoAux(Lvl,Tam),
	right(90),
	tapeteexternoAux(Lvl,Tam),
	right(90),
	tapeteexternoAux(Lvl,Tam).	

tapeteinternoAux(0,Tam):-
	forward(Tam).
	
tapeteinternoAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	tapeteinternoAux(Lvl,Seg),
	right(90),
	tapeteinternoAux(Lvl,Seg),
	left(90),
	tapeteinternoAux(Lvl,Seg),
	left(90),
	tapeteinternoAux(Lvl,Seg),
	right(90),
	tapeteinternoAux(Lvl,Seg).
	
tapeteinterno(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	tapeteinternoAux(Lvl,Tam),
	right(90),
	tapeteinternoAux(Lvl,Tam),
	right(90),
	tapeteinternoAux(Lvl,Tam),
	right(90),
	tapeteinternoAux(Lvl,Tam).		
	

panalAux(0,Tam):-
	forward(Tam).
	
panalAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Neg is -1 * Seg,
	penup,
	forward(Seg),
	pendown,
	
	left(135),
	panalAux(Lvl,Seg),
	forward(Neg),
	left(90),
	panalAux(Lvl,Seg),
	forward(Neg),
	left(135),
	panalAux(Lvl,Seg),
	
	left(45),
	panalAux(Lvl,Seg),
	forward(Neg),
	
	right(90),
	panalAux(Lvl,Seg),
	forward(Neg),
	
	left(45),
	penup,
	forward(Seg),
	pendown.
	
panal(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	panalAux(Lvl,Tam),
	right(90),
	panalAux(Lvl,Tam),
	right(90),
	panalAux(Lvl,Tam),
	right(90),
	panalAux(Lvl,Tam).
	

arosAux(0,Tam):-
	circulo(Tam).
	
arosAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	arosAux(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown,
	
	arosAux(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown,
	arosAux(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown.
	
aros(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	arosAux(Lvl,Tam).
	



tonelAux(0,Tam):-
	circulo(Tam).
	
tonelAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	ChildMid is Tam-Seg,
	Neg is -1 * ChildMid,
	
	tonelAux(Lvl,Tam),
	
	penup,
	forward(ChildMid),
	pendown,
	
	tonelAux(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120),
	forward(ChildMid),
	pendown,
	
	tonelAux(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120),
	forward(ChildMid),
	pendown,
	
	tonelAux(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120).
	
tonel(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	right(120),
	tonelAux(Lvl,Tam),
	right(120),
	penup,
	forward(Tam),
	forward(Tam),
	pendown,
	tonelAux(Lvl,Tam),
	right(120),
	penup,
	forward(Tam),
	forward(Tam),
	pendown,
	tonelAux(Lvl,Tam).
	
starAux(0,Tam):-
	forward(Tam),
	Neg is -1 * Tam,
	forward(Neg).
	
starAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Rad is Tam/2,
	
	circulo(Rad),
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90),
	
	penup,
	forward(Tam),
	pendown,
	
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90),
	
	penup,
	forward(Tam),
	pendown,
	
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90),
	starAux(Lvl,Seg),
	right(90).
	
star(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	starAux(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	starAux(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	starAux(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	starAux(Lvl,Tam).

insideAux(0,Tam):-
	circulo(Tam),
	panalAux(1,Tam),
	right(180),
	panalAux(1,Tam).
	
insideAux(N,Tam):-
	Seg is Tam-5,
	Lvl is N-1,	
	arosAux(N,Tam),
	insideAux(Lvl,Tam),
	insideAux(Lvl,Seg).

inside(N,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	penup,
	forward(-50),
	pendown,
	insideAux(N,Tam),
	right(120),
	insideAux(N,Tam),
	right(120),
	insideAux(N,Tam),
	right(120).
	
tapetePanalAux(0,Tam):-
	forward(Tam).

	
tapetePanalAux(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Neg is -1*Seg,
	
	tapeteinternoAux(Lvl,Seg),
	right(90),
	tapeteinternoAux(Lvl,Seg),
	left(90),
	tapeteinternoAux(Lvl,Seg),
	left(90),
	tapeteinternoAux(Lvl,Seg),
	right(90),
	tapeteinternoAux(Lvl,Seg),
	
	penup,
	forward(Neg),
	right(180),
	pendown,
	panalAux(Lvl,Seg),	
	right(90),
	panalAux(Lvl,Seg),
	right(90),
	panalAux(Lvl,Seg),
	right(90),
	panalAux(Lvl,Seg),
	penup,
	left(90),
	forward(Seg),
	pendown.
	
tapetePanal(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	tapetePanalAux(Lvl,Tam),
	right(90),
	tapetePanalAux(Lvl,Tam),
	right(90),
	tapetePanalAux(Lvl,Tam),
	right(90),
	tapetePanalAux(Lvl,Tam).	
	
/*
___________________________________________________________________________
	VERSION COLORIDA
*/
copodenieveAuxColor(0,Tam):-
	forward(Tam).
	
copodenieveAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	copodenieveAuxColor(Lvl,Seg),
	left(60),
	copodenieveAuxColor(Lvl,Seg),
	right(120),
	copodenieveAuxColor(Lvl,Seg),
	left(60),
	copodenieveAuxColor(Lvl,Seg).
	
copodenieveColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	copodenieveAuxColor(Lvl,Tam),
	right(120),
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	copodenieveAuxColor(Lvl,Tam),
	right(120),
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	copodenieveAuxColor(Lvl,Tam),
	right(120).
	
corbatinAuxColor(0,Tam):-
	forward(Tam).
	
corbatinAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	left(60),
	corbatinAuxColor(Lvl,Seg),
	right(120),
	corbatinAuxColor(Lvl,Seg),
	corbatinAuxColor(Lvl,Seg),
	left(120),
	corbatinAuxColor(Lvl,Seg),
	right(60).
	
corbatinColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	corbatinAuxColor(Lvl,Tam),
	right(90),
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	corbatinAuxColor(Lvl,Tam),
	right(90),
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	corbatinAuxColor(Lvl,Tam),
	right(90),
	Color4 is 7, 
	 colore(Color4,Nomb4), 
	setpencolor(Nomb4),
	corbatinAuxColor(Lvl,Tam).
	
estrellaAuxColor(0,Tam):-
	forward(Tam).
	
estrellaAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	right(30),
	estrellaAuxColor(Lvl,Seg),
	left(60),
	estrellaAuxColor(Lvl,Seg),
	right(30).
	
estrellaColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	right(-45),
	estrellaAuxColor(Lvl,Tam),
	right(90),
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	estrellaAuxColor(Lvl,Tam),
	right(90),
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	estrellaAuxColor(Lvl,Tam),
	right(90),
	Color4 is 7, 
	 colore(Color4,Nomb4), 
	setpencolor(Nomb4),
	estrellaAuxColor(Lvl,Tam).	

tapeteexternoAuxColor(0,Tam):-
	forward(Tam).
	
tapeteexternoAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	tapeteexternoAuxColor(Lvl,Seg),
	left(90),
	tapeteexternoAuxColor(Lvl,Seg),
	right(90),
	tapeteexternoAuxColor(Lvl,Seg),
	right(90),
	tapeteexternoAuxColor(Lvl,Seg),
	left(90),
	tapeteexternoAuxColor(Lvl,Seg).
	
tapeteexternoColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	tapeteexternoAuxColor(Lvl,Tam),
	right(90),
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	tapeteexternoAuxColor(Lvl,Tam),
	right(90),
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	tapeteexternoAuxColor(Lvl,Tam),
	right(90),
	Color4 is 7, 
	 colore(Color4,Nomb4), 
	setpencolor(Nomb4),
	tapeteexternoAuxColor(Lvl,Tam).	

tapeteinternoAuxColor(0,Tam):-
	forward(Tam).
	
tapeteinternoAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	tapeteinternoAuxColor(Lvl,Seg),
	right(90),
	tapeteinternoAuxColor(Lvl,Seg),
	left(90),
	tapeteinternoAuxColor(Lvl,Seg),
	left(90),
	tapeteinternoAuxColor(Lvl,Seg),
	right(90),
	tapeteinternoAuxColor(Lvl,Seg).
	
tapeteinternoColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	tapeteinternoAuxColor(Lvl,Tam),
	right(90),
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	tapeteinternoAuxColor(Lvl,Tam),
	right(90),
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	tapeteinternoAuxColor(Lvl,Tam),
	right(90),
	Color4 is 7, 
	 colore(Color4,Nomb4), 
	setpencolor(Nomb4),
	tapeteinternoAuxColor(Lvl,Tam).		
	

panalAuxColor(0,Tam):-
	forward(Tam).
	
panalAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Neg is -1 * Seg,
	penup,
	forward(Seg),
	pendown,
	
	left(135),
	panalAuxColor(Lvl,Seg),
	forward(Neg),
	left(90),
	panalAuxColor(Lvl,Seg),
	forward(Neg),
	left(135),
	panalAuxColor(Lvl,Seg),
	
	left(45),
	panalAuxColor(Lvl,Seg),
	forward(Neg),
	
	right(90),
	panalAuxColor(Lvl,Seg),
	forward(Neg),
	
	left(45),
	penup,
	forward(Seg),
	pendown.
	
panalColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	panalAuxColor(Lvl,Tam),
	right(90),
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	panalAuxColor(Lvl,Tam),
	right(90),
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	panalAuxColor(Lvl,Tam),
	right(90),
	Color4 is 7, 
	 colore(Color4,Nomb4), 
	setpencolor(Nomb4),
	panalAuxColor(Lvl,Tam).
	

arosAuxColor(0,Tam):-
	circulo(Tam).
	
arosAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	arosAuxColor(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown,
	
	arosAuxColor(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown,
	arosAuxColor(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown.
	
arosColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	arosAuxColor(Lvl,Tam).


tonelAuxColor(0,Tam):-
	circulo(Tam).
	
tonelAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	ChildMid is Tam-Seg,
	Neg is -1 * ChildMid,
	
	tonelAuxColor(Lvl,Tam),
	
	penup,
	forward(ChildMid),
	pendown,
	
	tonelAuxColor(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120),
	forward(ChildMid),
	pendown,
	
	tonelAuxColor(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120),
	forward(ChildMid),
	pendown,
	
	tonelAuxColor(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120).
	
tonelColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	right(120),
	tonelAuxColor(Lvl,Tam),
	right(120),
	penup,
	forward(Tam),
	forward(Tam),
	pendown,
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	tonelAuxColor(Lvl,Tam),
	right(120),
	penup,
	forward(Tam),
	forward(Tam),
	pendown,
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	tonelAuxColor(Lvl,Tam).
	
starAuxColor(0,Tam):-
	forward(Tam),
	Neg is -1 * Tam,
	forward(Neg).
	
starAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Rad is Tam/2,
	
	circulo(Rad),
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90),
	
	penup,
	forward(Tam),
	pendown,
	
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90),
	
	penup,
	forward(Tam),
	pendown,
	
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90),
	starAuxColor(Lvl,Seg),
	right(90).
	
starColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	starAuxColor(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	starAuxColor(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	starAuxColor(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	Color4 is 7, 
	 colore(Color4,Nomb4), 
	setpencolor(Nomb4),
	starAuxColor(Lvl,Tam).

insideAuxColor(0,Tam):-
	circulo(Tam),
	panalAuxColor(1,Tam),
	right(180),
	panalAux(1,Tam).
	
insideAuxColor(N,Tam):-
	Seg is Tam-5,
	Lvl is N-1,	
	arosAuxColor(N,Tam),
	insideAuxColor(Lvl,Tam),
	insideAuxColor(Lvl,Seg).
	
insideColor(N,Tam):-
	logo, setbgcolor(black),
	penup,
	forward(-50),
	pendown,
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	insideAuxColor(N,Tam),
	right(120),
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	insideAuxColor(N,Tam),
	right(120),
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	insideAuxColor(N,Tam),
	right(120).
	
tapetePanalAuxColor(0,Tam):-
	forward(Tam).

	
tapetePanalAuxColor(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Neg is -1*Seg,
	
	tapeteinternoAuxColor(Lvl,Seg),
	right(90),
	tapeteinternoAuxColor(Lvl,Seg),
	left(90),
	tapeteinternoAuxColor(Lvl,Seg),
	left(90),
	tapeteinternoAuxColor(Lvl,Seg),
	right(90),
	tapeteinternoAuxColor(Lvl,Seg),
	
	penup,
	forward(Neg),
	right(180),
	pendown,
	panalAuxColor(Lvl,Seg),	
	right(90),
	panalAuxColor(Lvl,Seg),
	right(90),
	panalAuxColor(Lvl,Seg),
	right(90),
	panalAuxColor(Lvl,Seg),
	penup,
	left(90),
	forward(Seg),
	pendown.
	
tapetePanalColor(Lvl,Tam):-
	logo, setbgcolor(black),
	Color1 is 4, 
	 colore(Color1,Nomb1), 
	 setpencolor(Nomb1),
	tapetePanalAuxColor(Lvl,Tam),
	right(90),
	Color2 is 5, 
	 colore(Color2,Nomb2), 
	 setpencolor(Nomb2),
	tapetePanalAuxColor(Lvl,Tam),
	Color3 is 6, 
	 colore(Color3,Nomb3), 
	setpencolor(Nomb3),
	right(90),
	tapetePanalAuxColor(Lvl,Tam),
	right(90),
	Color4 is 7, 
	 colore(Color4,Nomb4), 
	setpencolor(Nomb4),
	tapetePanalAuxColor(Lvl,Tam).		
	
	
/*
___________________________________________________________________________
	VERSION ALEATORIA
*/
copodenieveAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),
	forward(Tam).
	
copodenieveAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	copodenieveAuxRandom(Lvl,Seg),
	left(60),
	copodenieveAuxRandom(Lvl,Seg),
	right(120),
	copodenieveAuxRandom(Lvl,Seg),
	left(60),
	copodenieveAuxRandom(Lvl,Seg).
	
copodenieveRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	copodenieveAuxRandom(Lvl,Tam),
	right(120),
	copodenieveAuxRandom(Lvl,Tam),
	right(120),
	copodenieveAuxRandom(Lvl,Tam),
	right(120).
	
corbatinAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),

	forward(Tam).
	
corbatinAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	left(60),
	corbatinAuxRandom(Lvl,Seg),
	right(120),
	corbatinAuxRandom(Lvl,Seg),
	corbatinAuxRandom(Lvl,Seg),
	left(120),
	corbatinAuxRandom(Lvl,Seg),
	right(60).
	
corbatinRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	corbatinAuxRandom(Lvl,Tam),
	right(90),
	corbatinAuxRandom(Lvl,Tam),
	right(90),
	corbatinAuxRandom(Lvl,Tam),
	right(90),
	corbatinAuxRandom(Lvl,Tam).
	
estrellaAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),

	forward(Tam).
	
estrellaAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	right(30),
	estrellaAuxRandom(Lvl,Seg),
	left(60),
	estrellaAuxRandom(Lvl,Seg),
	right(30).
	
estrellaRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	right(-45),
	estrellaAuxRandom(Lvl,Tam),
	right(90),
	estrellaAuxRandom(Lvl,Tam),
	right(90),
	estrellaAuxRandom(Lvl,Tam),
	right(90),
	estrellaAuxRandom(Lvl,Tam).	

tapeteexternoAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),

	forward(Tam).
	
tapeteexternoAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	tapeteexternoAuxRandom(Lvl,Seg),
	left(90),
	tapeteexternoAuxRandom(Lvl,Seg),
	right(90),
	tapeteexternoAuxRandom(Lvl,Seg),
	right(90),
	tapeteexternoAuxRandom(Lvl,Seg),
	left(90),
	tapeteexternoAuxRandom(Lvl,Seg).
	
tapeteexternoRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	tapeteexternoAuxRandom(Lvl,Tam),
	right(90),
	tapeteexternoAuxRandom(Lvl,Tam),
	right(90),
	tapeteexternoAuxRandom(Lvl,Tam),
	right(90),
	tapeteexternoAuxRandom(Lvl,Tam).	

tapeteinternoAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),

	forward(Tam).
	
tapeteinternoAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	tapeteinternoAuxRandom(Lvl,Seg),
	right(90),
	tapeteinternoAuxRandom(Lvl,Seg),
	left(90),
	tapeteinternoAuxRandom(Lvl,Seg),
	left(90),
	tapeteinternoAuxRandom(Lvl,Seg),
	right(90),
	tapeteinternoAuxRandom(Lvl,Seg).
	
tapeteinternoRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	tapeteinternoAuxRandom(Lvl,Tam),
	right(90),
	tapeteinternoAuxRandom(Lvl,Tam),
	right(90),
	tapeteinternoAuxRandom(Lvl,Tam),
	right(90),
	tapeteinternoAuxRandom(Lvl,Tam).		
	

panalAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),

	forward(Tam).
	
panalAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Neg is -1 * Seg,
	penup,
	forward(Seg),
	pendown,
	
	left(135),
	panalAuxRandom(Lvl,Seg),
	forward(Neg),
	left(90),
	panalAuxRandom(Lvl,Seg),
	forward(Neg),
	left(135),
	panalAuxRandom(Lvl,Seg),
	
	left(45),
	panalAuxRandom(Lvl,Seg),
	forward(Neg),
	
	right(90),
	panalAuxRandom(Lvl,Seg),
	forward(Neg),
	
	left(45),
	penup,
	forward(Seg),
	pendown.
	
panalRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	panalAuxRandom(Lvl,Tam),
	right(90),
	panalAuxRandom(Lvl,Tam),
	right(90),
	panalAuxRandom(Lvl,Tam),
	right(90),
	panalAuxRandom(Lvl,Tam).
	

arosAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),

	circulo(Tam).
	
arosAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	arosAuxRandom(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown,
	
	arosAuxRandom(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown,
	arosAuxRandom(Lvl,Seg),
	right(120),
	penup,
	forward(Seg),
	pendown.
	
arosRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	arosAuxRandom(Lvl,Tam).

tonelAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),

	circulo(Tam).
	
tonelAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	ChildMid is Tam-Seg,
	Neg is -1 * ChildMid,
	
	tonelAuxRandom(Lvl,Tam),
	
	penup,
	forward(ChildMid),
	pendown,
	
	tonelAuxRandom(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120),
	forward(ChildMid),
	pendown,
	
	tonelAuxRandom(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120),
	forward(ChildMid),
	pendown,
	
	tonelAuxRandom(Lvl,Seg),
	
	penup,
	forward(Neg),
	
	right(120).
	
tonelRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	right(120),
	tonelAuxRandom(Lvl,Tam),
	right(120),
	penup,
	forward(Tam),
	forward(Tam),
	pendown,
	tonelAuxRandom(Lvl,Tam),
	right(120),
	penup,
	forward(Tam),
	forward(Tam),
	pendown,
	tonelAuxRandom(Lvl,Tam).
	
starAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),
	forward(Tam),
	Neg is -1 * Tam,
	forward(Neg).
	
starAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Rad is Tam/2,
	
	circulo(Rad),
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90),
	
	penup,
	forward(Tam),
	pendown,
	
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90),
	
	penup,
	forward(Tam),
	pendown,
	
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90),
	starAuxRandom(Lvl,Seg),
	right(90).
	
starRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	starAuxRandom(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	starAuxRandom(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	starAuxRandom(Lvl,Tam),
	penup,
	right(90),
	forward(Tam),
	pendown,
	starAuxRandom(Lvl,Tam).

insideAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),
	circulo(Tam),
	panalAux(1,Tam),
	right(180),
	panalAux(1,Tam).
	
insideAuxRandom(N,Tam):-
	Seg is Tam-5,
	Lvl is N-1,	
	arosAuxRandom(N,Tam),
	insideAuxRandom(Lvl,Tam),
	insideAuxRandom(Lvl,Seg).
	
insideRandom(N,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	penup,
	forward(-50),
	pendown,
	insideAuxRandom(N,Tam),
	right(120),
	insideAuxRandom(N,Tam),
	right(120),
	insideAuxRandom(N,Tam),
	right(120).
	
tapetePanalAuxRandom(0,Tam):-
	random_between(2,7,RandC),
	colore(RandC,Nomb), 
	setpencolor(Nomb),
	forward(Tam).

	
tapetePanalAuxRandom(N,Tam):-
	Lvl is N-1,
	Seg is Tam/3,
	Neg is -1*Seg,
	
	tapeteinternoAuxRandom(Lvl,Seg),
	right(90),
	tapeteinternoAuxRandom(Lvl,Seg),
	left(90),
	tapeteinternoAuxRandom(Lvl,Seg),
	left(90),
	tapeteinternoAuxRandom(Lvl,Seg),
	right(90),
	tapeteinternoAuxRandom(Lvl,Seg),
	
	penup,
	forward(Neg),
	right(180),
	pendown,
	panalAuxRandom(Lvl,Seg),	
	right(90),
	panalAuxRandom(Lvl,Seg),
	right(90),
	panalAuxRandom(Lvl,Seg),
	right(90),
	panalAuxRandom(Lvl,Seg),
	penup,
	left(90),
	forward(Seg),
	pendown.
	
tapetePanalRandom(Lvl,Tam):-
	logo,setpencolor(white), setbgcolor(black), 
	tapetePanalAuxRandom(Lvl,Tam),
	right(90),
	tapetePanalAuxRandom(Lvl,Tam),
	right(90),
	tapetePanalAuxRandom(Lvl,Tam),
	right(90),
	tapetePanalAuxRandom(Lvl,Tam).	

	
/*
___________________________________________________________________________
	IMPLEMENTACIONES ADICIONALES
*/
circulo(R):-
	get(@myturtle_class,x,X),
	get(@myturtle_class,y,Y),
	circulo(_,_,R,X,Y,0,2*pi/20),
	penup,
	setxy(X,Y),
	pendown.
circulo(_,_,_,_,_,X,_):- 
	Lim is 2*pi,
	X>Lim,!.
circulo(X,Y,R,H,K,0,Step):-
	X is H + R * cos(0),
	Y is K+R*sin(0),
	penup,
	setxy(X,Y),
	pendown,
	ThetaAux is Step,
	circulo(_,_,R,H,K,ThetaAux,Step).
circulo(X,Y,R,H,K,Theta,Step):-
	X is H + R * cos(Theta),
	Y is K+R*sin(Theta),
	setxy(X,Y),
	ThetaAux is Theta+Step,
	circulo(_,_,R,H,K,ThetaAux,Step).
	
/*
___________________________________________________________________________
	BIBIOTECAS UTILIZADAS
*/	

	
/*  
    ProLOGO - LOGO in Prolog.

    Authors: Lorenzo Masetti, Luca Cinti        
    E-mail: lorenzo.masetti@libero.it, lucacinti@supereva.it       
    WWW: http://www.prato.linux.it/~lmasetti/seriamente/ProLOGO           
    Copyright (C): 2003

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
*/

:- use_module(library(pce)).

:- pce_autoload(finder, library(find_file)).
:- pce_global(@finder, new(finder)).
:- pce_image_directory('.').


/*** CLASSE PER LA GESTIONE DELLA TARTARUGA ***/
:- pce_begin_class(turtle,class).
variable(x,int:=0,both).
variable(y,int:=0,both).
variable(angle,int:=0,both).
variable(pen,int:=1,both).
variable(color,string:='#000000',both).
variable(visible,int:=1,both).
:- pce_end_class.

ifthenelse(A,B,C) :- call(A),!,B.
ifthenelse(A,B,C) :- C.


parser([]) --> [],!.
parser([H | L]) --> token(H),spazio,!,parser(L).

spazio --> [32],spazio,!.
spazio --> [13],spazio,!.
spazio --> [10],spazio,!.
spazio --> [9],spazio,!.

spazio --> [],!.

token(N) --> [X],{not(is_char(X)),name(N,[X])}.
token(W) --> chars(L), {name(W,L)}.

chars([H | T]) --> char(H),!,chars(T).
chars([]) --> [].

char(X) --> [X], {is_char(X)}.


is_char(X) :- code_type(X,digit).
is_char(X) :- code_type(X,alnum).
is_char(35). /* # */
is_char(95). /* _ */


/*** Risorse: le 359 immagini della tartaruga ***/
image(R, N, File) :-
	between(0, 359, N),
	turtlename(Prefix),
	atom_concat(Prefix, N, R),
	concat_atom(['img/',Prefix, N, '.gif'], File).

resource(R, image, image(File)) :-
	image(R, _N, File).




parola(Stringa,Parola,Resto) :-
	append(Parola,[32 | Resto],Stringa),!.

parola(Stringa,Stringa,[]).

/** tokenize(String,List) **/

tokenize([],[]).
tokenize(String,[First | List]) :- parola(String, Parola, Resto),name(First,Parola),tokenize(Resto,List).


list_to_string([],'').
list_to_string(List,String) :- word_list(String,List,[]).


list_to_string_no_spaces([],'').
list_to_string_no_spaces(List,String) :- word_list_nospace(String,List,[]).


word_list_nospace(X) --> [X].
word_list_nospace(X) --> [Prima], word_list_nospace(Dopo), {atom_concat(Prima,Dopo,X)}.


/*** GRAMMATICA LOGO **/

/** Terminali **/
fd_ --> [fd].
fd_ --> [a].
fd_ --> [avanti].
fd_ --> [forward].


bk_ --> [bk].
bk_ --> [back].
bk_ --> [i].
bk_ --> [indietro].

lt_ --> [lt].
lt_ --> [left].
lt_ --> [s].
lt_ --> [sinistra].
lt_ --> [leftturn].

rt_ --> [rt].
rt_ --> [right].
rt_ --> [d].
rt_ --> [destra].
rt_ --> [rightturn].

square_open_ -->['['].
square_close_ --> [']'].

repeat_ --> [repeat].
repeat_ --> [ripeti].


if_ --> [if].
if_ --> [se].

while_ --> [while].
while_ --> [mentre].


home_ --> [home].
home_ --> [tana].

make_ --> [make].
make_ --> [assegna].
make_ --> [as].

print_ --> [print].
print_ --> [pr].
print_ --> [stampa].

cls_ --> [cs].
cls_ --> [clearscreen].
cls_ --> [ps].
cls_ --> [puliscischermo].

clean_ --> [clean].
clean_ --> [pulisci].

clt_ --> [ct].
clt_ --> [cleartext].
clt_ --> [puliscitesto].
clt_ --> [pt].

penup_ --> [penup].
penup_ --> [pu].
penup_ --> [sulapenna].
penup_ --> [su].

pendown_ --> [pendown].
pendown_ --> [pd].
pendown_ --> [giulapenna].
pendown_ --> [giu].

read_ --> [read].
read_ --> [leggi].

label_ --> [label].
label_ --> [etichetta].


showturtle_ --> [showturtle].
showturtle_ --> [st].
showturtle_ --> [mostarta].
showturtle_ --> [mt].

hideturtle_ --> [hideturtle].
hideturtle_ --> [ht].
hideturtle_ --> [nastarta].
hideturtle_ --> [nt].

setx_ --> [setx].
setx_ --> [vaix].

sety_ --> [sety].
sety_ --> [vaiy].

setpos_ --> [setpos].
setpos_ --> [vaipos].

setxy_ --> [setxy].
setxy_ --> [vaixy].

setheading_ --> [setheading].
setheading_ --> [seth].
setheading_ --> [angolo].

setpencolor_ --> [setpencolor].
setpencolor_ --> [setpencolour].
setpencolor_ --> [pencolor].
setpencolor_ --> [pencolour].
setpencolor_ --> [setpc].
setpencolor_ --> [color].
setpencolor_ --> [colour].
setpencolor_ --> [colorepenna].
setpencolor_ --> [colore].

setbgcolor_ --> [setbackgroundcolor].
setbgcolor_ --> [setbackgroundcolour].
setbgcolor_ --> [setbgcolor].
setbgcolor_ --> [setbgcolour].
setbgcolor_ --> [bgcolor].
setbgcolor_ --> [bgcolour].
setbgcolor_ --> [coloresfondo].
setbgcolor_ --> [sfondo].

defaultcolors_ --> [defaultcolors].
defaultcolors_ --> [defaultcolours].
defaultcolors_ --> [coloristandard].

load_ --> [load].
load_ --> [carica].


about_ --> [about].
about_ --> [informazioni].

xcor_ --> [xcor].
ycor_ --> [ycor].
heading_ --> [heading].
heading_ --> [direzione].

showvars_ --> [pons].
showvars_ --> [printoutnames].
showvars_ --> [ponames].
showvars_ --> [showvars].
showvars_ --> [mostravar].

erall_ --> [erall].
erall_ --> [eraseall].
erall_ --> [cancellatutto].

first_ --> [first].
first_ --> [primo].

butfirst_ --> [butfirst].
butfirst_ --> [coda].

last_ --> [last].
last_ --> [ultimo].

readlist_ --> [readlist].
readlist_ --> [leggilista].

push_ --> [push].
push_ --> [metti].

concat_ --> [concat].

length_ --> [length].
length_ --> [lunghezza].
length_ --> [lung].

empty_ --> [empty].
empty_ --> [emptyp]. /** nome LOGO originale **/
empty_ --> [vuota].


and_ --> [and].
and_ --> [e].

or_ --> [or].
or_ --> [o].

not_ --> [not].
not_ --> [non].

true_ --> [true].
true_ --> [vero].

false_ --> [false].
false_ --> [falso].


atom_(X) --> [X].

/*** Gestione Memoria come lista di coppie ***/
/*** readmem( Ambiente da cui leggere , NomeVar, Valore ) ***/
readmem([val(Nome,N) | L],Nome,N) :- !.
readmem([ Head | Tail ],Nome,N) :- readmem(Tail,Nome,N).
readmem([],Nome,0). /*** variabili indefinite valgono 0 ***/

/*** writemem (Ambiente Iniziale,Nome Var,Valore,Ambiente dopo la scrittura) ***/
writemem([],Nome,X,[val(Nome,X)]) :- !.
writemem([val(Nome,OldValue) | Tail],Nome,X,[val(Nome,X) | Tail]) :- !.
writemem([ Head | Tail ],Nome,X,[Head | NewMem]) :- writemem(Tail,Nome,X,NewMem).


quote --> ['\"'].
dots --> [':'].
thing_ --> [thing].
thing_ --> [cosa].


/*** Variabili in lettura. Lettura :x oppure thing "x  ***/

variable_r(Env,Nome) --> dots,[Nome].
variable_r(Env,Nome) --> thing_,wordexpr(Env,Nome).


word(Nome) --> quote,atom_(Nome),!.
word('') --> quote.



and(true,true,true).
and(false,_,false).
and(_,false,false).

or(false,false,false).
or(true,_,true).
or(_,true,true).

not(true,false).
not(false,true).


/*** Espressioni Intere ***/

intexpr(Env,X) --> termine(Env,T),intexpr2(Env,E),!, {X is T+E}.

intexpr2(Env,X)--> ['+'],termine(Env,T),intexpr2(Env,E),!,{X is T+E}.
intexpr2(Env,X)--> ['-'],termine(Env,T),intexpr2(Env,E),!,{X is -T+E}.
intexpr2(Env,0) --> [].



termine(Env,X) --> fattore(Env,F),termine2(Env,X,F).
termine(Env,X) --> fattore(Env,F).

/*** Per calcolare le espressioni da sinistra a destra si tiene il risultato parziale e lo si passa al prossimo "termine2" che calcola (ricorsivamente) il risultato finale ***/

termine2(Env,X,Parziale) --> ['*'],fattore(Env,F),{Ris is Parziale*F},termine2(Env,X,Ris).
termine2(Env,X,Parziale) --> ['/'],fattore(Env,F),{F\=0,Ris is Parziale//F},termine2(Env,X,Ris).
termine2(Env,X,Parziale) --> ['/'],fattore(Env,F),{F=0},errorMsg('Division by zero').

termine2(Env,X,Parziale) --> ['%'],fattore(Env,F),{F\=0,Ris is Parziale mod F},termine2(Env,X,Ris).
termine2(Env,X,Parziale) --> ['%'],fattore(Env,F),{F=0},errorMsg('Division by zero').
termine2(Env,Parziale,Parziale) --> []. /*** Quando non ci sono ulteriori termini viene restituito il risultato finale ***/



/*
   Un'espressione puo' essere anche read [ inserisci un intero ] oppure solo read.
   Esempio: make "x read [ inserisci il numero di passi ] fd :x
*/
fattore(Env,X) --> read_,  list_string_(Mess), {readinput(X,Mess)}.
fattore(Env,X) --> read_,!,{readinput(X,'?')}.

fattore(Env,X) --> ['('],intexpr(Env,X),[')'].
fattore(Env,X) --> [N], {integer(N), X is N}.
fattore(Env,X) --> ['-'],fattore(Env,E),!, {X is -E}.
fattore(Env,X) --> variable_r(Env,Nome), { readmem(Env,Nome,X),integer(X)}.

fattore(Env,X) --> first_, listexpr(Env,[X|_]),{integer(X),!}.
fattore(Env,0) --> first_, listexpr(Env,[]), errorMsg('First doesn\'t like [] as input').

fattore(Env,0) --> last_, listexpr(Env,[]), errorMsg('Last doesn\'t like [] as input').
fattore(Env,X) --> last_, listexpr(Env,L), {last(X,L), integer(X)}.

fattore(Env,X) --> xcor_, {get(@myturtle_class,x,X)}.
fattore(Env,X) --> ycor_, {get(@myturtle_class,y,X)}.
fattore(Env,X) --> heading_, {get(@myturtle_class,angle,Angle),trasfAngleInv(Angle,X)}.

fattore(Env,X) --> length_, listexpr(Env,L), !,{length(L,X)}.

fattore(Env,X) --> length_, wordexpr(Env,Str), !,{atom_codes(Str,L),length(L,X)}.




word_list(X) --> [X].
word_list(X) --> [Prima], word_list(Dopo), {atom_concat(Prima,' ',Temp),atom_concat(Temp,Dopo,X)}.
list_string_(X) --> square_open_, word_list(X), square_close_.


/*** Espressioni Liste ***/

listexpr(Env,L) --> list_(L).
listexpr(Env,L) --> variable_r(Env,Nome), {readmem(Env,Nome,L),is_list(L)}.
listexpr(Env,L) --> butfirst_, listexpr(Env,[_ | L]).
listexpr(Env,[]) --> butfirst_, listexpr(Env,[]),errorMsg('butfirst doesn\'t like [] as input'). 

listexpr(Env,L) --> readlist_, list_string_(Mess),!, {readList(L,Mess)}.
listexpr(Env,L) --> readlist_,!, {readList(L,'')}.

listexpr(Env,[X | L]) --> push_,intexpr(Env,X),listexpr(Env,L).
listexpr(Env,[X | L]) --> push_,boolexpr(Env,X),listexpr(Env,L).
listexpr(Env,[X | L]) --> push_,wordexpr(Env,X),listexpr(Env,L).

listexpr(Env,L) --> concat_,listexpr(Env,L1),listexpr(Env,L2),{append(L1,L2,L)}.


atom_list([]) --> [].
atom_list([Head | Tail ]) --> [Head],atom_list(Tail).

list_(X) --> square_open_, atom_list(X), square_close_.


/*** Espressioni Word ***/ 

wordexpr(Env,X) --> word(X).
wordexpr(Env,X) --> variable_r(Env,Nome),{readmem(Env,Nome,X),not(integer(X))}.

wordexpr(Env,X) --> first_, listexpr(Env,[X|_]).
wordexpr(Env,X) --> last_, listexpr(Env,L), {last(X,L), not(integer(X))}.

wordexpr(Env,X) --> first_, wordexpr(Env,Str), {name(Str,[ F | T ]),name(X,[F])}.
wordexpr(Env,X) --> butfirst_, wordexpr(Env,Str), {name(Str,[ F | T ]),name(X,T)}.

wordexpr(Env,X) --> last_, wordexpr(Env,Str), {name(Str,L),last(Last,L),name(X,[Last])}.


/*** Espressioni booleane ***/


boolexpr(Env,X) --> boolterm(Env,F1), or_, boolexpr(Env,F2), {or(F1,F2,X)}.
boolexpr(Env,X) --> boolterm(Env,X).

boolterm(Env,X) --> boolfatt(Env,F1), and_, boolterm(Env,F2), {and(F1,F2,X)}.
boolterm(Env,X) --> boolfatt(Env,X).


boolfatt(Env,true) --> true_.
boolfatt(Env,false) --> false_.
boolfatt(Env,X) --> not_,['('],boolexpr(Env,Y),[')'], {not(Y,X)}.
boolfatt(Env,X) --> intexpr(Env,E1),['='],intexpr(Env,E2),{ifthenelse(E1=E2,X=true,X=false) }.
boolfatt(Env,X) --> intexpr(Env,E1),['>'],intexpr(Env,E2),{ifthenelse(E1>E2,X=true,X=false) }.
boolfatt(Env,X) --> intexpr(Env,E1),['<'],intexpr(Env,E2),{ifthenelse(E1<E2,X=true,X=false) }.
boolfatt(Env,X) --> intexpr(Env,E1),['>'],['='],intexpr(Env,E2),{ifthenelse(E1>=E2,X=true,X=false) }.
boolfatt(Env,X) --> intexpr(Env,E1),['<'],['='],intexpr(Env,E2),{ifthenelse(E1=<E2,X=true,X=false) }.
boolfatt(Env,X) --> intexpr(Env,E1),['!'],['='],intexpr(Env,E2),{ifthenelse(E1\=E2,X=true,X=false) }.
boolfatt(Env,X) --> ['('],boolexpr(Env,X),[')'].

boolfatt(Env,true) --> variable_r(Env,Nome),{ readmem(Env,X,true)}.
boolfatt(Env,false) --> variable_r(Env,Nome),!,{ readmem(Env,X,false)}.


boolfatt(Env,X) --> empty_, listexpr(Env,L), {ifthenelse(length(L,0),X=true,X=false)}.
boolfatt(Env,X) --> empty_, wordexpr(Env,Str), {atom_codes(Str,L),ifthenelse(length(L,0),X=true,X=false)}.




/*** Comandi e istruzioni ***/
command(Env,Env) --> [].
command(Env0,EnvF) --> instr(Env0,Env1),!,command(Env1,EnvF).
command(Env0,Env1) --> square_open_,!, command(Env0,Env1), square_close_.


instr(Env,Env) --> fd_,intexpr(Env,X),!, {forward(X)}.
instr(Env,Env) --> bk_,intexpr(Env,X),!, {back(X)}.
instr(Env,Env) --> rt_,intexpr(Env,X),!, {right(X)}.
instr(Env,Env) --> lt_,intexpr(Env,X),!, {left(X)}.
instr(Env,Env) --> home_,!, {home}.


instr(Env,Env) --> print_, intexpr(Env,X),!,{println(X)}.
instr(Env,Env) --> print_, boolexpr(Env,X),!,{println(X)}.
instr(Env,Env) --> print_, listexpr(Env,L),!, {list_to_string(L,String),println(String)}.

instr(Env,Env) --> print_, wordexpr(Env,X),!, {println(X)}.


instr(Env,Env) --> cls_, !, {clearscreen}.
instr(Env,Env) --> clean_,!, {clean}.

instr(Env,Env) --> penup_,!, {penup}.
instr(Env,Env) --> pendown_,!, {pendown}.

instr(Env,Env) --> showturtle_,!, {showturtle}.
instr(Env,Env) --> hideturtle_,!, {hideturtle}.

instr(Env,Env) --> setx_, intexpr(Env,X),!,{setx(X)}.
instr(Env,Env) --> sety_, intexpr(Env,Y),!,{sety(Y)}.
instr(Env,Env) --> setpos_, listexpr(Env,[X, Y]),!,{setxy(X,Y)}.
instr(Env,Env) --> setpos_, listexpr(Env,L),!,{list_to_string(L,StrL), concat_atom(['setpos doesn\'t like [ ',StrL,' ] as input.'],Msg)}, errorMsg(Msg).

instr(Env,Env) --> setxy_, intexpr(Env,X), intexpr(Env,Y),!,{setxy(X,Y)}.

instr(Env,Env) --> label_, listexpr(Env,L),!, {list_to_string(L,Str),label(Str)}.
instr(Env,Env) --> label_, wordexpr(Env,X),!, {label(X)}.


instr(Env,Env) --> setheading_, intexpr(Env,X),!, {setheading(X)}.


instr(Env,Env) --> setpencolor_, word(X),!, {setpencolor(X)}.
instr(Env,Env) --> setbgcolor_, word(X),!, {setbgcolor(X)}.


colore(0,black).
colore(1,blue).
colore(2,green).
colore(3,cyan).
colore(4,red).
colore(5,magenta).
colore(6,yellow).
colore(7,white).

instr(Env,Env) --> setpencolor_, intexpr(Env,X),!, {Code is abs(X mod 8), colore(Code,Name),setpencolor(Name)}.
instr(Env,Env) --> setbgcolor_, intexpr(Env,X),!, {Code is abs(X mod 8), colore(Code,Name),setbgcolor(Name)}.


instr(Env,Env) --> defaultcolors_, {defaultcolors}.

instr(Env,Env) --> clt_, {cleartext}.

instr(Env,Env) --> load_, listexpr(Env,L), {list_to_string_no_spaces(L,File),openScript(File)}.

instr(Env,Env) --> about_,{about}.

instr(Env,Env) --> showvars_, {showvars}.

instr(Env,[]) --> erall_.

/*** Gestione del repeat while e if ***/

openclose(0) --> [],!.
openclose(X) --> square_open_,!,{X1 is X+1},openclose(X1).
openclose(X) --> square_close_,!,{X1 is X-1},openclose(X1).
openclose(X) --> [I],openclose(X).
openclose(X,[],[]) :- X\=0,errorDialog('Syntax Error').




/*** gestione del Repeat ***/
instr(Env0,EnvF,L,C) :- repeat_(L,Lr), intexpr(Env0,X,Lr,Le),X>1,!,square_open_(Le,Los),command(Env0,Env1,Los,Lc),square_close_(Lc,Lcs),X1 is X-1,instr(Env1,EnvF,[repeat, X1 | Le],C).

instr(Env0,EnvF) --> repeat_, intexpr(Env0,1),!,square_open_,command(Env0,EnvF),square_close_.
 
instr(Env0,Env0) --> repeat_, intexpr(Env0,0),!,square_open_,openclose(1).


/*** gestione dell'If ***/
instr(Env0,EnvF) -->if_, boolexpr(Env0,true),!,square_open_,command(Env0,EnvF),square_close_,square_open_,openclose(1),!.

instr(Env0,EnvF) --> if_, boolexpr(Env0,false),!,square_open_,openclose(1),square_open_,command(Env0,EnvF),square_close_.

/*** gestione dello while ***/
instr(Env0,EnvF,L,C) :- while_(L,L1), boolexpr(Env0,true,L1,L2),!,square_open_(L2,L3),command(Env0,Env1,L3,L4),square_close_(L4,L5),instr(Env1,EnvF,L,C).

instr(Env0,Env0) --> while_, boolexpr(Env0,false),!,square_open_,openclose(1).

/*** gestione dell'assegnamento ***/
instr(Env0,EnvF) --> make_, wordexpr(Env0,Nome), wordexpr(Env0,X),!,{writemem(Env0,Nome,X,EnvF)}.
instr(Env0,EnvF) --> make_, wordexpr(Env0,Nome), intexpr(Env0,X),!,{writemem(Env0,Nome,X,EnvF)}.
instr(Env0,EnvF) --> make_, wordexpr(Env0,Nome), boolexpr(Env0,X),!,{writemem(Env0,Nome,X,EnvF)}.
instr(Env0,EnvF) --> make_, wordexpr(Env0,Nome), listexpr(Env0,X),!,{writemem(Env0,Nome,X,EnvF)}.


								 
/*** Command not found ***/
instr(Env,Env) --> [X],!, {atom_concat('I don\'t know how to ',X,Mess)},errorMsg(Mess).

	
	
/** converte da gradi in radianti **/
radianti(AngleGradi,Angle) :- Angle is (AngleGradi*pi/180).
/*** converte da radianti in gradi ***/
gradi(AngleRad,Angle) :- Angle is AngleRad*180/pi.


/*** imposta la tartaruga ***/
setTurtle(X,Y,Angle) :- send(@myturtle_class,x(X)),send(@myturtle_class,y(Y)),send(@myturtle_class,angle(Angle)).

/*** legge i valori della tartaruga ***/
getTurtle(X,Y,Angle,Pen,Visible) :- get(@myturtle_class,x,X),get(@myturtle_class,y,Y),get(@myturtle_class,angle,Angle),get(@myturtle_class,pen,Pen),get(@myturtle_class,visible,Visible).

getTurtle(X,Y,Angle,Pen) :-  get(@myturtle_class,x,X),get(@myturtle_class,y,Y),get(@myturtle_class,angle,Angle),get(@myturtle_class,pen,Pen).

getTurtle(X,Y,Angle) :-  get(@myturtle_class,x,X),get(@myturtle_class,y,Y),get(@myturtle_class,angle,Angle).

getColor(Color) :- get(@myturtle_class,color,Color).

/*** Esecuzione delle istruzioni atomiche ***/

forward(N) :- getTurtle(X,Y,Angle,Pen),radianti(Angle,Radianti),X1 is round(X+N*cos(Radianti)),Y1 is round(Y+N*sin(Radianti)),setTurtle(X1,Y1,Angle),line(X,Y,X1,Y1,Pen),paintTurtle.


back(N) :- getTurtle(X,Y,Angle,Pen),radianti(Angle,Radianti),X1 is round(X-N*cos(Radianti)),Y1 is round(Y-N*sin(Radianti)),setTurtle(X1,Y1,Angle),line(X,Y,X1,Y1,Pen),paintTurtle.



left(Angle) :- getTurtle(X,Y,CurrentAngle),NewAngle is ((CurrentAngle+Angle) mod 360),setTurtle(X,Y,NewAngle),paintTurtle.

right(Angle) :- getTurtle(X,Y,CurrentAngle),NewAngle is ((CurrentAngle-Angle) mod 360),setTurtle(X,Y,NewAngle),paintTurtle.


home :- getTurtle(X,Y,Angle,Pen),line(X,Y,0,0,Pen),setTurtle(0,0,90),paintTurtle.


penup :- send(@myturtle_class,pen(0)).


pendown :- send(@myturtle_class,pen(1)).


showturtle :- send(@myturtle_class,visible(1)),paintTurtle.


hideturtle :- send(@myturtle_class,visible(0)),send(@turtle_image,destroy).


label(String) :- getTurtle(X,Y,Angle),getColor(Color),trasf(X,Y,X1,Y1),new(Text,text(String)),send(Text,colour,Color),send(@graphics,display(Text,point(X1,Y1))).

println(String) :- send(@text,append(String)),send(@text,append('\n')).


setx(X) :- getTurtle(CurrX,Y,Angle,Pen),line(CurrX,Y,X,Y,Pen),setTurtle(X,Y,Angle),paintTurtle.


sety(Y) :- getTurtle(X,CurrY,Angle,Pen),line(X,CurrY,X,Y,Pen),setTurtle(X,Y,Angle),paintTurtle.


setxy(X,Y) :- getTurtle(CurrX,CurrY,Angle,Pen),line(CurrX,CurrY,X,Y,Pen),setTurtle(X,Y,Angle),paintTurtle.


setheading(Angle) :- trasfAngle(Angle,Angle2),send(@myturtle_class,angle(Angle2)),paintTurtle.


/*** trasforma dalle coordinate logo in coordinate della finestra ***/
trasf(X,Y,X1,Y1) :- get(@graphics,width,W), get(@graphics,height,H),X1 is (W/2+X), Y1 is (H/2-Y).

/*** trasformazioni dell'angolo ***/
trasfAngle(Angle,Angle2) :- AngleTemp is ((90-Angle) mod 360),ifthenelse(AngleTemp>=0,Angle2=AngleTemp,Angle2 is AngleTemp+360).
trasfAngleInv(Angle,Angle2) :- Angle2 is ((90- Angle) mod 360).


/*** DISEGNO  ***/
/*** se la penna e' su non si disegna niente ***/
line(_,_,_,_,0).


line(X0,Y0,X1,Y1,1) :- trasf(X0,Y0,X0v,Y0v),trasf(X1,Y1,X1v,Y1v),new(Line,line(X0v,Y0v,X1v,Y1v)),getColor(Color),send(Line,colour,Color),send(@graphics,display(Line)).



paintTurtle :- getTurtle(X,Y,Angle,_,0).

paintTurtle :- getTurtle(X,Y,Angle,_,1),trasf(X,Y,X1,Y1),trasfAngle(Angle,Angle2),image(R,Angle2,File),free(@turtle_image),send(@graphics,display(new(@turtle_image,bitmap(resource(R))),point(X1,Y1))).

defaultcolors :- setpencolor('#000000'),setbgcolor('#ffffff').

clearscreen :- send(@graphics,clear),setTurtle(0,0,90),paintTurtle.

clean :- send(@graphics,clear),paintTurtle.

cleartext :- send(@text,clear).


setpencolor(Color) :- send(@myturtle_class,color(Color)).
setbgcolor(Color) :-  send(@graphics,background(Color)).

about :- welcomemessage,println('Written by Lorenzo Masetti and Luca Cinti').

showvars :- ambiente(M),scrivivar(M).


scrivivar([]).
scrivivar([val(Nome,Valore) | Tail]) :- is_list(Valore),!,list_to_string(Valore,ValoreStr),concat_atom([ Nome,'=',ValoreStr],Testo),println(Testo),scrivivar(Tail).

scrivivar([val(Nome,Valore) | Tail]) :- concat_atom([Nome,'=',Valore],Testo),println(Testo),scrivivar(Tail).
scrivivar([H | T]) :- scrivivar(T).


readinput(X,Message) :-
	new(D,dialog('Input (Integer)')),
	send(D,append,new(T,int_item(Message,0))),
	new(Returner,message(D,return,T?selection)),
	send(D,append,button(ok,Returner)),
	send(D,default_button,ok),
	get(D,confirm,Answer),
	send(D,destroy),
	X = Answer.


readList(L,Message) :-	
	new(D,dialog('Input (List)')),
	send(D,append,new(T,text_item(Message,''))),
	new(Returner,message(D,return,T?selection)),
	send(D,append,button(ok,Returner)),
	send(D,append,button(cancel,message(D,return,''))),
	send(D,default_button,ok),
	get(D,confirm,Answer),
	send(D,destroy),
	string_to_list(Answer,Input),
	tokenize(Input,L).


errorDialog(Message) :-	
	send(@graphics,alert), /*** beep! ***/
	println(Message),
	new(D,dialog('Error')),
	send(D,append,label(mess,Message)),
	send(D,append,button(ok,message(D,return,@nil))),
	send(D,default_button,ok),
	get(D,confirm,Answer),
	send(D,destroy).

toend --> [X], toend.
toend(_,[]).

errorMsg(Message) --> {errorDialog(Message)},toend.

/*** Esegue un comando ***/
exec(Command,Env,EnvF):-
	string_to_list(Command,Comm),parser(C,Comm,[]),command(Env,EnvF,C,[]).

/*** Esegue il comando e pulisce la casella di input ***/
run(Program,Input) :-
	send(Input,clear),
	run(Program).

run(Program) :-
	ambiente(Env),
	exec(Program,Env,EnvF),
	retractall(ambiente(X)),
	assertz(ambiente(EnvF)).
	




/*** costruisce la interfaccia grafica ***/
:- free(@graphics).
:- pce_global(@graphics,new(window('ProLogo',size(600,400)))).
:- free(@turtle_image).
:- pce_global(@turtle_image,new(bitmap(''))).
:- free(@text).
:- pce_global(@text,new(view('TextScreen'))).

logo :- logo(90,300).

logo(W,H) :-
	retractall(ambiente(X)),
	assertz(ambiente([])),
	retractall(turtlename(X)),
	assertz(turtlename('turtle')),
	new(Turtle,turtle('myturtle')),
	send(@graphics,size(size(W,H))),
	new(Command,dialog('CommandWindow')),
	send(@text,editable(false)),
	HText is round(H/30),
	send(@text,size(size(W,HText))),
	new(Input,text_item('?-','',message(@prolog,run,@arg1,@receiver))),
	send(Input,length(W)),
	send(Command,append(Input)),
	send(@text,below,@graphics),
	send(@graphics,open),
	init.

init :- defaultcolors,
	clearscreen,
	showturtle,
	pendown,
	penup,
	forward(-150),
	pendown,
	hideturtle.



useturtle :-
	retractall(turtlename(X)),
	assertz(turtlename('turtle')),
	paintTurtle.

usepenguin :-
	retractall(turtlename(X)),
	assertz(turtlename('pinguino')),
	paintTurtle.

loadscript :-
	get(@finder,file,FileToLoad),
	openScript(FileToLoad).

loadscript.

openScript(FileToLoad) :-
	exists_file(FileToLoad),
	open(FileToLoad,read,File),
	read_stream_to_codes(File,Command,[]),
	close(File),
	run(Command).

openScript(FileToLoad) :- atom_concat('File not found: ',FileToLoad,Mess),errorDialog(Mess).


	
welcomemessage :- 
	get(@graphics,width,Width),
	get(@graphics,height,Height),
	println('Welcome to ProLOGO, a LOGO-like language written in Prolog. Version 0.9. ProLOGO is Free Software'),
	concat_atom(['Graphics Window is ',Width,'x',Height,' pixels'],Mess),
	println(Mess).





