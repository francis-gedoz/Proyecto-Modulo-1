Algoritmo CostoFinalPedido
	
	Definir neto, cupon, cantidad, peso, envio, pesoTotal, excesoPeso Como Real
	Definir precioDescuento, precioImpuesto, precioCantidad, costoFinal, costoPesoExtra Como Real
	Definir producto, destino, tieneCupon Como Cadena
	Definir descuentoCantidad, IVA Como Entero
	
	IVA <- 19
	descuentoCantidad <- 5
	
	Escribir "Indique el artículo que va a adquirir:"
	Leer producto
	
	Escribir "Ingrese el precio neto del producto:"
	Leer neto
	
	Escribir "¿Tiene un cupón de descuento? (S/N):"
	Leer tieneCupon
	
	Si Mayusculas(tieneCupon) = "S" Entonces
		cupon <- 10
	Sino
		cupon <- 0
	FinSi
	
	Escribir "Ingrese la cantidad de artículos:"
	Leer cantidad
	
	Dimension preciosUnitarios[cantidad]
	
	Escribir "Informe el peso bruto unitario (en kg):"
	Leer peso
	
	Escribir "Indicar el Destino: Santiago o Regiones (S/R)"
	Leer destino
	
	Si Mayusculas(destino) = "R" Entonces
		envio <- 8000
	Sino
		envio <- 3900
	FinSi
	
	pesoTotal <- peso * cantidad
	
	Si Mayusculas(destino) = "R" y pesoTotal > 2 Entonces
		excesoPeso <- pesoTotal - 2
		costoPesoExtra <- excesoPeso * 500
	Sino
		costoPesoExtra <- 0
	FinSi
	
	envio <- envio + costoPesoExtra
	precioDescuento <- neto * (1 - cupon / 100)
	precioImpuesto <- precioDescuento * (1 + IVA / 100)
	
	Si cantidad > 1 Entonces
		precioCantidad <- precioImpuesto * (1 - descuentoCantidad / 100)
	Sino
		precioCantidad <- precioImpuesto
	FinSi
	
	Definir i Como Entero
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		preciosUnitarios[i] <- precioCantidad
	Fin Para
	
	costoFinal <- (precioCantidad * cantidad) + envio
	
	Escribir "                                                   "
	Escribir "------------- DETALLE DEL COSTO FINAL -------------"
	Escribir "                                                   "
	Escribir "Descripción del Producto: ", producto
	Escribir "Precio Neto del Producto: $", neto
	Escribir "Cupón de Descuento (", cupon, "%): $", neto - precioDescuento
	Escribir "Subtotal Después del Cupón: $", precioDescuento
	Escribir "Valor Total del IVA (", IVA, "%): $", precioImpuesto - precioDescuento
	Escribir "Subtotal Después de Impuestos: $", precioImpuesto
	
	Si cantidad > 1 Entonces
		Escribir "Descuento Cantidad (", descuentoCantidad, "%): $", precioImpuesto - precioCantidad
	FinSi
	
	Escribir "                                                   "
	Escribir "Desglose Subtotal Por Artículo:"
	Escribir "                                                   "
	
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir i, "º ", producto ": $", preciosUnitarios[i]
	Fin Para
	
	Escribir "                                                   "
	Escribir "Peso Bruto Total del Pedido: ", pesoTotal, " kg"
	
	Si costoPesoExtra > 0 Entonces
		Escribir "Cargo Extra (Exceso de Peso): $", costoPesoExtra
	FinSi
	
	Escribir "Despacho (Costo Envío + Cargo Exceso Peso): $", envio
	Escribir "                                                   "
	Escribir "Costo Total del Pedido por ", cantidad, " ", producto, "(s): $", costoFinal
	Escribir "                                                   "
	
FinAlgoritmo
