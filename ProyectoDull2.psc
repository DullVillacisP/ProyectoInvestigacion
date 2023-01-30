      //funciones o SubAlgoritmo del proyecto
//SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	FinPara
	Escribir "         Elija opc[1..",lim,"]"Sin Saltar
	Leer opcion
FinFuncion
//SubAlgoritmo menuNumeros
//1) SubAlgoritmo mayorDosNumeros()
//esta funcion pide dos numeros y presenta el mayor de los dos
Funcion MayorDosNumeros()
	Definir num1, num2, c Como Entero
	c=0; num1=0; num2=0
	Escribir "Ingrese numero1"
	Leer num1
	Escribir "Ingrese numero2"
	Leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
	
FinFuncion

//2) SubAlgoritmo dividir dos numeros por restas()
//esta funcion pide dos numeros y saber su cociente y resto mediante la resta
Funcion DividirDosNumerosPorRestas()
	Definir num1, num2, c Como Entero
	c=0; num1=0; num2=0
	Escribir "Ingrese numero1"
	Leer num1
	Escribir "Ingrese numero2"
	Leer num2
	Mientras num1 >= num2 Hacer
		num1=num1-num2
		c=c+1
	FinMientras
	Escribir "El cociente es: ", c
	Escribir "El resto es: ", num1
FinFuncion

//3) SubAlgoritmo multiplicar 2 numeros por sumas()
//esta funcion pide dos numeros y saber 
Funcion MultiplicarDosNumerosPorSumas()
	Definir num1, num2, acu, c Como Entero
	c=1; acu=0
	Escribir "ingrese num1"
	Leer num1
	Escribir "ingrese num2"
	Leer num2
	Mientras c <= num1 Hacer
		acu=acu+num2
		c=c+1
	FinMientras
	Escribir "El resultado de: ", num1, "*", num2, "=", acu
FinFuncion

//4) Suma pares y productos multiplos de 5 de una secuencia de numeros"
// n=5 : 20,5,10,2,1,5 respuesta: sumpares=32  multiplos5=1000
Funcion SumaParesyProductosMultiplosDe5DeUnaSecuenciaDeNumeros()
	Definir n, acu, c, acu1, n1 Como Entero
	n1=0; c=1; acu=0; acu1=1
	Escribir "ingrese cantidad de numeros a ingresar"
	leer n 
	Mientras c <= n Hacer
		Escribir "ingrese los numeros"
		Leer n1
		Si n1 mod 2=0 Entonces
			acu=acu+n1
		FinSi
		Si n1 mod 5=0 Entonces
			acu1=acu1*n1
		FinSi
		c=c+1
	FinMientras
	Escribir "la suma de los pares es: ", acu
	Escribir "La multiplicacion de los multiplos de 5 es: " acu1
FinFuncion 

//5) Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0
//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
Funcion CantidaDeDigitosDeCadaNumeroHasta0()
	Definir num, lim, r, c Como Entero
	Escribir "Ingrese los numeros"
	Leer num
	lim=0; c=0
	Mientras num<>lim Hacer
		Mientras num>0 Hacer
			num= trunc(num/10)
			c=c+1
		FinMientras
		Leer num
	FinMientras
	Escribir "La cantidad de digitos es: ", c
FinFuncion

//6) Mostrar El Precio, descuento, iva y pago de n trajes del almacen SomosMas
//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
//el 5%. Presentar el valor de cada traje con su respectivo valor, descuento y pago
//considerando el iva del 12%. Asuma que se ingresan n trajes.
// n=2
// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
Funcion MostrarElPreciodescuentoivaypagodentrajesdelalmacenSomosMas()
	Definir trajes, c, i, prec, dsct, iva Como real
	Escribir "ingrese cantidad de trajes"
	leer trajes
	c=0
	Para i=1 Hasta trajes Con Paso 1 Hacer
		Escribir "precio del traje: "
		Leer prec
		Si prec>100 Entonces
			c=trajes+1
			trajes=c
			dsct=prec*0.10
			iva=prec-dsct*0.12
			Escribir "su descuento fue de 10% y su total mas iva es: ", iva
		SiNo
			dsct=prec*0.05
			iva=prec*0.12
			Escribir "su descuento fue de 5% y su total mas iva es: ", iva
		FinSi
	FinPara
FinFuncion

//7) Dado tres numeros indicar si el segundo es el mayor
Funcion  DadoTresNumerosIndicarSiElSegundoEsElMayor()
	Definir num1, num2, num3 Como Real
	escribir "Ingrese el primer número: "
	leer num1
	escribir "Ingrese el segundo número: "
	leer num2
	escribir "Ingrese el tercer número: "
	leer num3
	
	Si (num2>num1) y (num2>num3) entonces
		escribir "El segundo número es el mayor."
	SiNo 
		escribir "El segundo número no es el mayor"
	FinSi
FinFuncion

// 8)SubAlgoritmo DadoUnaSecuenciaDeNumerosSacarSuPromedio()
//la secuencia termina cuando se ingrese un numero negativo
Funcion DadoUnaSecuenciaDeNumerosSacarSuPromedio()
	Definir n, suma, c Como Entero
	Definir prom Como Real
	n=1; suma=0; prom=0; c=0
	Mientras n>0 Hacer
		Escribir "Ingrese los números"
		Leer n
		si n>0 Entonces
			suma=suma+n
			c=c+1
			prom = suma/c
		FinSi
	FinMientras
	Escribir "Su promedio es: ", prom
FinFuncion

//9) dos numeros son amigos cuando la suma de los divisores del primer numero
// son iguales a la suma de los divisores del segundo numero.
// n1=6(1,2,3)=6 n2=25(1,5)=6
Funcion  NumerosAmigos()
	Definir  num1,num2,con1,con2,divisor Como Entero
	Escribir "Ingresa un número: "
	Leer num1
	Escribir "Ingresa otro número: "
	Leer num2
	con1=0-num1
	con2=0-num2
	Para divisor<-1 Hasta num1 Con Paso 1 Hacer
		Si (num1%divisor)=0 Entonces
			con1 = con1 + divisor
		Fin Si
		
	Fin Para
	Para divisor<-1 Hasta num2 Con Paso 1 Hacer
		Si (num2%divisor)=0 Entonces
			con2 = con2 + divisor
		Fin Si
		
	Fin Para
	Si con1 = con2 Entonces
		Escribir "Son números amigos"
	SiNo
		Escribir "No son números amigos"
	FinSi
FinFuncion

//10. Dos numeros son primos gemelos si ambos son primos
//n1=5  n2=7
Funcion PrimosGemelos()
	Definir a, b, c, i, c2 Como Entero
	Escribir "Ingrese un numero"
	Leer a
	Escribir "Ingrese un numero"
	Leer b
	c=0
	Para i=1 Hasta a Hacer
		Si a mod i=0 Entonces
			c=c+1
		FinSi
	FinPara
	Si c=2 Entonces
	FinSi
	c2=0
	Para i=1 Hasta b Hacer
		Si b mod i=0 Entonces
			c2=c2+1
		FinSi
	FinPara
	Si c=c2 Entonces
		Escribir "Son primos gemelos"
	SiNo
		Escribir "No son primos gemelos"
	FinSi
FinFuncion


// SubAlgoritmo menuCadenas

// 1) SubAlgoritmo CaracterPorCaracter()
//esta funcion pide ingresar una palabra y despues presentarla caracter por caracter
Funcion CaracterPorCaracter()
	Definir frase Como Caracter
	Definir pos Como Entero
	frase=""; pos=0
	Escribir "Ingrese una frase"
	Leer frase
	Para pos=0 Hasta Longitud(frase)-1 Hacer
		Escribir Subcadena(frase,pos,pos)
	FinPara
FinFuncion

// 2) SubAlgoritmo PresentarElPrimeroMedioYUltimoCaracterDeUnaFrase()
// frase="hola que tal"    hql
Funcion PresentarElPrimeroMedioYUltimoCaracterDeUnaFrase()
	Definir frase Como Caracter
	Definir pos, l, medio Como Entero
	frase=""; pos=0; l=0; medio=0
	Escribir "Ingrese la frase"
	Leer frase
	l=Longitud(frase)
	medio = trunc (l/2)
	Escribir "La primera letra de la frase es: ", Subcadena(frase,pos,pos)
	Escribir "La letra de la mitad de la frase es: ", Subcadena(frase,medio,medio)
	Escribir "La última letra de la frase es: ", Subcadena(frase,l-1,l-1)
FinFuncion

// 3) SubAlgoritmo DadoDosNombresIndicarSiSonIguales()
//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
Funcion DadoDosNombresIndicarSiSonIguales()
	Definir nombre1, nombre2 como caracter
	nombre1=""; nombre2=""
	Escribir "Ingrese el primer nombre"
	Leer nombre1
	Escribir "Ingrese el segundo nombre"
	Leer nombre2
	Si (nombre1=nombre2) Entonces
		Escribir "Los dos nombres ingresados son iguales"
	SiNo
		Escribir "Los dos nombres ingresados no  son iguales"
	Fin Si
FinFuncion

//4) Dadas dos frases indicar la de mayor longitud
//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
Funcion DadasDosFrasesLaDeMayorLongitud()
	Definir frase, frase2, car, carAnterior Como Caracter
	Definir pos, l, c, c2, suma Como Entero
	c=0; suma=0; c2=0
	Escribir "ingrese frase"
	Leer frase
	l=Longitud(frase)-1
	Para pos=0 hasta l con paso 1 Hacer
		car=Subcadena(frase,pos,pos) 
		carAnterior=Subcadena(frase, pos, pos)
		c2=c2+1
		suma=suma+c2
	FinPara
	Escribir "ingrese frase2"
	Leer frase2
	l=Longitud(frase2)-1
	Para pos=0 hasta l con paso 1 Hacer
		car=Subcadena(frase2, pos,pos)
		carAnterior=Subcadena(frase2, pos, pos)
		c=c+1
		suma=suma+c
	FinPara
	Si frase<frase2 Entonces
		Escribir "la frase de mayor longitud es: ", frase2
	SiNo
		si frase>frase2 Entonces
			Escribir "la frase de mayor longitud es: ", frase
		FinSi
	Fin Si
FinFuncion

// 5) SubAlgoritmo IndicarCuantasComasPuntosEtcHayEnUnaCadena()
//frase="Hola, que tal; como te va,Bien: y tu, como estas."
// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
Funcion IndicarCuantasComasPuntosEtcHayEnUnaCadena()
	Definir frase Como Caracter
	Definir pos, l, c1, c2, c3, c4 Como Entero
	frase=""; pos=0; l=0; c1=0; c2=0; c3=0; c4=0
	Escribir "Ingrese la frase"
	Leer  frase
	Para pos=0 Hasta Longitud(frase)-1 Hacer
		si subcadena(frase,pos,pos)="," Entonces
			c1=c1+1
		SiNo
			si subcadena(frase,pos,pos)="." Entonces
				c2=c2+1
			SiNo
				si subcadena(frase,pos,pos)=";" Entonces
					c3=c3+1
				SiNo
					si subcadena(frase,pos,pos)=":" Entonces
						c4=c4+1
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir "Hay " , c1 " , "
	Escribir "Hay " , c2 " . "
	Escribir "Hay " , c3 " ; "
	Escribir "Hay " , c4 " : "
FinFuncion

//6) Dado una cadena indicar cuantas vocales, consonantes y digitos hay 
//frase="Juan tiene 20 dolares"
// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
Funcion  IndicarCuantasVocalesConsonantesyDigitosHay()
	Definir Frase como Caracter
	Definir n,i,vocales, digitos, consonantes, espacio Como Entero
	Escribir "Ingrese una frase:"
	Leer Frase
	n = Longitud(frase)
	i=1
	vocales = 0
	digitos = 0
	consonantes = 0
	espacio = 0
	Mientras i <= n Hacer
		Segun Subcadena(Frase,i,i) Hacer
			"a" o "A":
				vocales = vocales +1
			"e" o "E":
				vocales = vocales +1
			"i" o "I":
				vocales = vocales +1
			"o" o "O":
				vocales = vocales +1
			"u" o "U":
				vocales = vocales +1
			"0":
				digitos = digitos+1
			"1":
				digitos = digitos+1
			"2":
				digitos = digitos+1
			"3":
				digitos = digitos+1
			"4":
				digitos = digitos+1
			"5":
				digitos = digitos+1
			"6":
				digitos = digitos+1
			"7":
				digitos = digitos+1
			"8":
				digitos = digitos+1
			"9":
				digitos = digitos+1	
			" ":
				espacio = espacio +1
			De Otro Modo:
				consonantes = consonantes +1
		Fin Segun
		i=i+1
		
	Fin Mientras
	Escribir "La frase tiene: ",vocales " vocales, ",consonantes," consonantes y ",digitos," digitos" 
FinFuncion

//7) Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras
// frase = "hola   que  tal" palabras=3
Funcion  IndicarCuantasPalabrasHayEnUnaFraseAsumiendoUnooVariosEspaciosEntrePalabras()
	Definir frase, r, l Como Caracter
	Definir lon,pos,c Como Entero
	Escribir '<< Ingrese frase >>' Sin Saltar
	Leer frase
	c <- 1
	lon <- Longitud(frase)
	Para pos<-1 Hasta lon Con Paso 1 Hacer
		r=Subcadena(frase,pos,pos)
		l=Subcadena(frase, pos-1, pos-1)
		si r <> " " y l = " " Entonces
			c=c+1
		FinSi
	FinPara
	Escribir " *La cantidad de palabras es: ", c 
FinFuncion

//8) Presentar la suma de los digitos de una cedula
//cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
Funcion  SumaDeLosDigitosDeUnaCedula()
	Definir cedula como Caracter
	Definir n,i, num Como Entero
	Escribir "Ingrese sun número de cédula:"
	Leer cedula
	n = Longitud(cedula)
	i=1
	num = 0
	Mientras i <= n Hacer
		Segun Subcadena(cedula,i,i) Hacer
			"0":
				num = num+0
			"1":
				num = num+1
			"2":
				num = num+2
			"3":
				num = num+3
			"4":
				num = num+4
			"5":
				num = num+5
			"6":
				num = num+6
			"7":
				num = num+7
			"8":
				num = num+8
			"9":
				num = num+9
		Fin Segun
		i=i+1
		
	Fin Mientras
	Escribir "La suma de su número de cédula es: ", num
FinFuncion

//9) Indicar si una palabra es palindroma
// palabra="ana"
Funcion  PalabraPalindroma()
	Definir palabra, palabra2, car, carAnterior Como Caracter
	Definir pos, l, c, c2, suma Como Entero
	c=0; suma=0; c2=0
	
	Escribir "Ingrese palabra"
	Leer palabra
	l=Longitud(palabra)-1
	Para pos=0 Hasta l Con Paso 1 Hacer
		car=Subcadena(palabra, pos, pos)
		carAnterior=Subcadena(palabra, pos, pos)
		c=c+1
		suma=suma+c
	FinPara
	
	Escribir "Ingrese palabra2"
	Leer palabra2
	Para pos=0 hasta l con paso 1 Hacer
		car=Subcadena(palabra2, pos,pos)
		carAnterior=Subcadena(palabra2, pos, pos)
		c2=c2+1
		suma=suma+c2
	FinPara
	
	Si palabra=palabra2 Entonces
		Escribir "la palabra es palindroma"
	SiNo
		si palabra<>palabra2 Entonces
			Escribir "la palabra NO es palindroma"
		FinSi
	FinSi
FinFuncion

//10) Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena
// cadena="hola que tal"
//         01234567891011
//caracter="qui"  resp=-1
//caracter="que"  resp=5
Funcion PresentarLaPosicionDeUnCaracteroSubcadenaCualquieraDentroDeUnaCadena()
	Definir cade, frase, respuesta, pos, pal Como Caracter
	Definir i, l, c, cont2, d, e Como Entero
	Escribir "Ingrese una frase"
	Leer frase
	l=Longitud(frase)
	Escribir "Elija una de las palabras que ingreso"
	Leer pos
	c=0; cont2=0; d=0; e=0
	cade=Subcadena(frase, 0, 5)
	
	Para i=0 Hasta l-1 Con Paso 1 Hacer
		respuesta=Subcadena(frase, i, i)
		Si pos=respuesta Entonces
			Escribir "La palabra [ ",pos," ] se encuentra en la posicion ", cont2
		FinSi
		cont2=cont2+1
	FinPara
	
	Para i=0 Hasta l-1 Con Paso 1 Hacer
		respuesta=Subcadena(frase, i, i)+Subcadena(frase, i+1,i+1)
		Si pos=respuesta Entonces
			Escribir "La palabra [ ",pos," ] se encuentra en la posicion ", d
		FinSi
		d=d+1
	FinPara
	
	Para i=0 Hasta l-1 Con Paso 1 Hacer
		respuesta=Subcadena(frase, i, i)+Subcadena(frase, i+1, i+1)+Subcadena(frase, i+2,i+2)
		Si pos=respuesta Entonces
			Escribir "La palabra [ ",pos," ] se encuentra en la posicion ", e
		FinSi
		e=e+1
	FinPara
	
	Para i=0 Hasta l-1 Con Paso 1 Hacer
		respuesta=Subcadena(frase, i, i)+Subcadena(frase,i+1,i+1)+Subcadena(frase, i+2, i+2)+Subcadena(frase, i+3, i+3)
		Si pos=respuesta Entonces
			Escribir "La palabra [ ",pos," ] se encuentra en la posicion ", c
		FinSi
		c=c+1
	FinPara
FinFuncion


//SubAlgoritmo menuArreglos

//1) SubAlgoritmo PresentarDiezNumeros()
//Ingrese 10 números y presentar cada numero del arreglo
Funcion PresentarDiezNumeros()
	Definir numeros,pos,lon,num Como Entero
	Dimension numeros[10]
	lon=0;pos=0
	Escribir "Cantidad de elementos de la serie"
	leer lon
	
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Numero#",pos+1
		Leer num 
		numeros[pos] = num
	Fin Para
	Escribir "Numeros del arreglo"
	
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "[",pos,"]=",numeros[pos]
	Fin Para
FinFuncion

//2) Presentar los numeros pares de un arreglo
// arreglo=[2,3,4,67,8] presenta 2 4 8
Funcion  PresentarLosNumerosParesDeUnArreglo()
	Definir pos, lon, num, numeros Como Entero
	Leer lon
	Dimension num[lon]
	Escribir "<< NUMEROS INGRESADOS >>"
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Numero: ", pos+1
		Leer num[pos]
	FinPara
	
	Escribir "<< LOS NUMEROS PARES SON: >>"
	
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Si num[pos] mod 2=0 Entonces
			Escribir "El arreglo " , pos , " es un numero par ", num[pos]
		FinSi
	FinPara
FinFuncion

//3) Dado una serie de numeros guardar en un arreglo solo los numeros negativos
//n=5
// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
Funcion  DadoUnaSerieDeNumerosGuardarEnUnArregloSoloLosNumerosNegativos()
	Definir arreglo1, pos, lon, n Como Entero
	lon=0; pos=0; n=5
	Dimension arreglo1[n]
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir " *Ingrese Arreglo: ", pos Sin Saltar
		Leer arreglo1(pos)
	FinPara
	
	Escribir "<< NUMEROS NEGATIVOS >>"
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		si arreglo1[pos]<=-1 Entonces
			Escribir "es negativo: " , arreglo1(pos)
		FinSi
	FinPara
FinFuncion

//4) SubAlgoritmo ArregloNombresPresentarElPrimerCaracterDeCadaNombre()
// n=3
// ["ana","jose","dan"]  presenta a j d 
Funcion ArregloNombresPresentarElPrimerCaracterDeCadaNombre()
	Definir pos, lon, n Como Entero
	Definir nombre Como Caracter
	Escribir "Cuantos nombres desea ingresar"
	Leer n
	Dimension nombre[n]
	
	Para pos=0 hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre ", pos
		Leer nombre(pos)
	FinPara
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "arreglo[", pos, "]= ", Subcadena(nombre[pos],0,0)
	FinPara
FinFuncion
	
//5) Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo
//n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
Funcion  DadoUnArregloDeNumerosPresentarElTotalLaCantidadyElPromedioDelArreglo()
	Definir arreglo, pos,lon, num Como Entero
	Definir suma,prom como Real
	lon=0;pos=0
	suma=0
	prom=0
	Escribir "Cuantos números va a ingresar"
	Leer lon
	Dimension arreglo[lon]
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese el número ",pos+1
		leer num
		arreglo[pos] = num
	Fin Para
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		suma = suma + arreglo[pos]
	Fin Para
	
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		prom = suma/lon
	Fin Para
	Escribir "El total es: ",suma,", la cantidad es: ",lon," y el promedio es: ",prom
FinFuncion

//6) SubAlgoritmo DadoUnArregloPresentarloAlReveSoloMultiplosDe5()
//n=5  arreglo=[8,20,7,5,4] presenta 5 20
Funcion DadoUnArregloPresentarloAlReveSoloMultiplosDe5()
	Definir n,arreglo,num,pos,c, i Como Entero
	Escribir "Cantidad de Elementos"
	Leer n
	Dimension arreglo[n]
	c=0;pos=0; 
	Mientras c < n Hacer
		Escribir "Ingrese numero"
		leer num
		Si num mod 5 = 0 Entonces
			arreglo[pos]=num
			pos = pos+1
		Fin Si
		c=c+1
	Fin Mientras
	Para i=pos-1 Hasta 0 Con Paso -1 Hacer
		Escribir "arreglo[", i, "]= ", arreglo[i]
	FinPara
FinFuncion

//7) Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo
//n=5  arreglo=[8,20,7,5,4] presenta 5 20
Funcion DadoUnArregloPresentarElPrimeroElMedioyElUltimoElementoDelArreglo()
	Definir arreglo, pos,lon, num,numedio Como Entero
	
	Definir primer,ultimo, medio como Real
	lon=0;pos=0
	primer=0
	ultimo=0
	medio=0
	numedio=0
	Escribir "Cuantos números va a ingresar"
	Leer lon
	Dimension arreglo[lon]
	Para pos=0 Hasta lon-1 Con Paso 1 Hacer
		Escribir "Ingrese el número ",pos+1
		leer num
		arreglo[pos] = num
	Fin Para
	
	primer = arreglo[0]
	ultimo = arreglo[lon-1]
	Si (lon)%2=0 Entonces
		numedio = (lon)/2
		medio = (arreglo[numedio-1]+arreglo[numedio])/2
		
	SiNo
		numedio = ((lon)/2)+0.5
		medio = arreglo[numedio-1]
	Fin Si
	Escribir  primer," ", medio, " ", ultimo
FinFuncion	

//8) Dado un arreglo copiarlo en otro y presentarlo
//n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
Funcion  DadoUnArregloCopiarloEnOtroyPresentarlo()
	Definir arreglo1, arreglo2, arreglo3, n, pos Como Entero
	n=5
	Dimension arreglo1[n]
	Dimension arreglo2[n]
	Dimension arreglo3[n]
	
	Escribir "<< INGRESE SU PRIMER ARREGLO >>"
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir " Ingrese Primer Arreglo ", pos Sin Saltar
		Leer arreglo1(pos)
	FinPara
	
	Escribir "<< INGRESE SU SEGUNDO ARREGLO >>"
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir " Ingrese Segundo Arreglo ", pos Sin Saltar
		Leer arreglo2(pos)
	FinPara
	
	Escribir "<< PRESENTA ARREGLO 1 Y 2 >>"
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		arreglo3(pos)=arreglo1(pos)
		arreglo3(pos)=arreglo2(pos)
		Escribir "arreglo3: ", arreglo3(pos)
	FinPara
FinFuncion

// 9) SubAlgoritmo Dado2ArreglosCopiarenOtroArregloLaSumaDeCadaElementoDeLos2Arreglos()
//n=5  arreglo1=[8,20,7,5,4]
//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
Funcion Dado2ArreglosCopiarenOtroArregloLaSumaDeCadaElementoDeLos2Arreglos()
	Definir arreglo1, arreglo2, arreglo3, n, pos Como Entero
	n=5
	Dimension arreglo1[n]
	Dimension arreglo2[n]
	Dimension arreglo3[n]
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese su primer arreglo ", pos Sin Saltar
		Leer arreglo1(pos)
	FinPara
	
	Escribir "<<INGRESE SU SEGUNDO ARREGLO>>"
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese su segundo arreglo ", pos Sin Saltar
		Leer arreglo2(pos)
	FinPara 
	
	Para pos=0 Hasta n-1 Con Paso 1 Hacer
		Arreglo3(pos)=arreglo1(pos)+arreglo2(pos)
		Escribir "arreglo3: ", arreglo3(pos)
	FinPara
FinFuncion

//10) Dado una serie de numeros guarda en un arreglo los factoriales
//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
Funcion  DadoUnaSerieDeNumerosGuardaEnUnArregloLosFactoriales()
	Definir i, a Como Entero
	Definir fact, arreglofactorial1, arreglofactorial2 Como Real
	Dimension arreglofactorial1[5], arreglofactorial2[5]
	
	Para i=0 Hasta 5-1 Con Paso 1 Hacer
		Escribir i+1, ") Ingrese un numero"
		Leer arreglofactorial1[i]
	FinPara
	
	Para i=0 Hasta 5-1 Con Paso 1 Hacer
		Si arreglofactorial1[i] < 0 Entonces
			Escribir "No se puede sacar factorial de numero ", arreglofactorial1[i]
		SiNo
			a=1; fact=1
			Mientras a <= arreglofactorial1[i] Hacer
				fact=fact*a
				a=a+1
			FinMientras
			arreglofactorial2[i]=fact
		FinSi
	FinPara
	Para i=0 Hasta 5-1 Con Paso 1 Hacer
		Escribir "El factorial de ", arreglofactorial1[i], " es ", arreglofactorial2[i]
	FinPara
FinFuncion

//Algoritmo principal del proyecto
Algoritmo Proyecto1
	Definir menuPrincipal, menuNumeros, menuCadenas, menuArreglos, titulo, titulo2, opc, opcn, opcc, opca Como Caracter
	Dimension menuPrincipal[4], menuNumeros[11], menuCadenas[11], menuArreglos[11]
	//arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	//arreglo submenu numeros
	menuNumeros[0] = "   1)Mayor de 2 Numeros"
	menuNumeros[1] = "   2)Dividir dos numeros por restas"
	menuNumeros[2] = "   3)Multiplicar dos numeros por sumas"
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "   4)Suma pares y productos multiplos de 5 de una secuencia de numeros"
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "   5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "   6)Mostrar El precio, descuento, iva y pago de n trajes del almacen SomosMas"
	menuNumeros[6] = "   7)Dado tres numeros indicar si el segundo es el mayor"
	//La secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "   8)Dado una secuencia de numeros presentar su promedio"
	//Dos numeros son amigos cuando la suma de los divisores del primer numero
	//son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "   9)Numeros amigos"
	//Dos numeros son primos gemelos si ambos son primos
	//n1=5  n2=7
	menuNumeros[9] = "   10)Primos gemelos"
	menuNumeros[10] = "   11)Salir"
	
	//arreglos submenu cadenas
	
	// nombre = "ana"  ana
	menuCadenas[0] = "   1)Presentar un nombre caracter por caracter"
	// frase="hola que tal"    hql
	menuCadenas[1] = "   2)Presentar el primero, el medio y el ultimo caracter de una frase"
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "   3)Dado dos nombres indicar si son iguales"
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[3] = "   4)Dadas dos frases indicar la de mayor longitud"
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "   5)Indicar cuantas ,.;: hay en una cadena"
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "   6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "   7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "   8)Presentar la suma de los digitos de una cedula"
	// palabra="ana"
	menuCadenas[8] = "   9)Indicar si una palabra es palindroma"
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "   10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
	menuCadenas[10] = "   11)Salir"
	
	//arreglos submenu arreglos
	
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0] = "   1)Dado un arreglo cualquiera ingresarlo y presentarlo"
	// arreglo=[2,3,4,67,8] presenta 2 4 8 
	menuArreglos[1] = "   2)Presentar los numeros pares de un arreglo"
	//n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2] = "   3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
	// n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3] = "   4)Dado un arreglo de nombres presentar el primer caracter de cada nombre"
	//n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15 
	menuArreglos[4] = "   5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
	//n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5] = "   6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6] = "   7)Dado un arreglo presentar el primero, el medio y el ultimo elemento del arreglo"
	//n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7] = "   8)Dado un arreglo copiarlo en otro y presentarlo"
	//n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8] = "   9)Dado 2 arreglos copiar en un otro arreglo la suma de cada elemento de los 2 arreglos"
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24]
	menuArreglos[9] = "   10)Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10] ="11)Salir"
	opc=""
	Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
			"1":
				opcn=""
				Mientras opcn <> "11" Hacer
					opcn=presentarMenu("Menu Numeros",menuNumeros,11)
					Segun opcn Hacer
						"1":
							Escribir "Mayor de dos Numeros"
							MayorDosNumeros()
							Esperar 3 Segundos
						"2":
							Escribir "Dividir dos Numeros por Restas"
							DividirDosNumerosPorRestas()
							Esperar 3 Segundos
						"3":
							Escribir "Multiplicar dos numeros por sumas"
							MultiplicarDosNumerosPorSumas()
							Esperar 3 Segundos
						"4":
							Escribir "Suma pares y productos multiplos de 5 de una secuencia de numeros"
							SumaParesyProductosMultiplosDe5DeUnaSecuenciaDeNumeros()
							Esperar 3 Segundos
						"5":
							Escribir "Cantidad de digitos de cada numero hasta 0"
							CantidaDeDigitosDeCadaNumeroHasta0()
							Esperar 3 Segundos
						"6":
							Escribir "Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
							MostrarElPreciodescuentoivaypagodentrajesdelalmacenSomosMas()
							Esperar 3 Segundos
						"7":
							Escribir "Dado tres numeros indicar si el segundo es el mayor"
							DadoTresNumerosIndicarSiElSegundoEsElMayor()
							Esperar 3 Segundos
						"8":
							Escribir "Dado una secuencia de numeros sacar su promedio"
							DadoUnaSecuenciaDeNumerosSacarSuPromedio()
							Esperar 3 Segundos
						"9":
							Escribir "Numeros amigos"
							NumerosAmigos()
							Esperar 3 Segundos
						"10":
							Escribir "Primos gemelos"
							PrimosGemelos()
							Esperar 3 Segundos
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					FinSegun
				FinMientras
				
			"2":
				opcc=""
				Mientras opcc <> "11" Hacer
					opcc=presentarMenu("Menu Cadenas",menuCadenas,11)
					Segun opcc Hacer
						"1":
							Escribir "Presentar un nombre caracter por caracter"
							CaracterPorCaracter()
							Esperar 3 Segundos
						"2":
							Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
							PresentarElPrimeroMedioYUltimoCaracterDeUnaFrase()
							Esperar 3 Segundos
						"3":
							Escribir "Dado dos nombres indicar si son iguales"
							DadoDosNombresIndicarSiSonIguales()
							Esperar 3 Segundos
						"4":
							Escribir "Dadas dos frases indicar la de mayor longitud"
							DadasDosFrasesLaDeMayorLongitud()
							Esperar 3 Segundos
						"5":
							Escribir "Indicar cuantas ,.;: hay en una cadena"
							IndicarCuantasComasPuntosEtcHayEnUnaCadena()
							Esperar 3 Segundos
						"6":
							Escribir "Dado una cadena indicar cuantas vocales,consonantes y digitos hay"
							IndicarCuantasVocalesConsonantesyDigitosHay()
							Esperar 3 Segundos
						"7":
							Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
							IndicarCuantasPalabrasHayEnUnaFraseAsumiendoUnooVariosEspaciosEntrePalabras()
							Esperar 3 Segundos
						"8":
							Escribir "Presentar la suma de los digitos de una cedula"
							SumaDeLosDigitosDeUnaCedula()
							Esperar 3 Segundos
						"9":
							Escribir "Indicar si una palabra es palindroma"
							PalabraPalindroma()
							Esperar 3 Segundos
						"10":
							Escribir "Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
							PresentarLaPosicionDeUnCaracteroSubcadenaCualquieraDentroDeUnaCadena()
							Esperar 3 Segundos	
						"11":
							Escribir "Regresando al Menu Principal"
							Esperar 3 Segundos
						De Otro Modo:
							Escribir "Opcion invalida..."
							Esperar 3 Segundos
					FinSegun
				FinMientras
				
				"3":
					opca=""
					Mientras opca <> "11" Hacer
						opca=presentarMenu("Menu Arreglos",menuArreglos,11)
						Segun opca Hacer
							"1":
								Escribir "Dado un arreglo cualquiera ingresarlo y presentarlo"
								PresentarDiezNumeros()
								Esperar 3 Segundos
							"2":
								Escribir "Presentar los numeros pares de un arreglo"
								PresentarLosNumerosParesDeUnArreglo()
								Esperar 3 Segundos
							"3":
								Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
								DadoUnaSerieDeNumerosGuardarEnUnArregloSoloLosNumerosNegativos()
								Esperar 3 Segundos
							"4":
								Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
								ArregloNombresPresentarElPrimerCaracterDeCadaNombre()
								Esperar 3 Segundos
							"5":
								Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
								DadoUnArregloDeNumerosPresentarElTotalLaCantidadyElPromedioDelArreglo()
								Esperar 3 Segundos
							"6":
								Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
								DadoUnArregloPresentarloAlReveSoloMultiplosDe5()
								Esperar 3 Segundos
							"7":
								Escribir "Dado un arreglo presentar el primero, el medio y el ultimo elemento del arreglo"
								DadoUnArregloPresentarElPrimeroElMedioyElUltimoElementoDelArreglo()
								Esperar 3 Segundos
							"8":
								Escribir "Dado un arreglo copiarlo en otro y presentarlo"
								DadoUnArregloCopiarloEnOtroyPresentarlo()
								Esperar 3 Segundos
							"9":
								Escribir "Dado 2 arreglos copiar en otro arreglo la suma de cada elemento de los 2 arreglos"
								Dado2ArreglosCopiarenOtroArregloLaSumaDeCadaElementoDeLos2Arreglos()
								Esperar 3 Segundos
							"10":
								Escribir "Dado una serie de numeros guarda en un arreglo los factoriales"
								DadoUnaSerieDeNumerosGuardaEnUnArregloLosFactoriales()
								Esperar 3 Segundos
							"11":
								Escribir "Regresando al Menu Principal"
								Esperar 3 Segundos
							De Otro Modo:
								Escribir "Opcion invalida..."
								Esperar 3 Segundos
						FinSegun
					FinMientras
					
					"4":
						Escribir "Gracias por usar el Sistema <3"
						Esperar 3 Segundos
					FinSegun
					
	FinMientras
FinAlgoritmo
