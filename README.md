# Proyecto-Modulo-1
Pseudocódigo de Pseint - Cálculo Costo Final de Pedido

## Descripción general:

Algoritmo desarrollado en PSeInt que permite calcular el costo total de un pedido con cierta cantidad de productos, integrando múltiples factores comerciales y logísticos comunes en un proceso de venta, ligeramente adaptado a la realidad local y que escapa un poco del ejercicio originalmente propuesto. 

El algoritmo guía al usuario paso a paso, solicitando información relevante sobre el producto, las condiciones de envío y posibles descuentos, para luego generar un desglose detallado del costo final. Este proyecto es útil como ejercicio práctico de estructuras de control, operaciones matemáticas y manejo de arreglos unidimensionales en pseudocódigo.

## El programa realiza los siguientes pasos:

•   Ingreso de datos del pedido;
•   Nombre del producto;
•   Precio neto unitario;
•   Confirmación de cupón de descuento (10% si aplica);
•   Cantidad de unidades a comprar;
•   Peso unitario en kilogramos;
•   Destino del envío: Santiago o Regiones.

## Cálculos intermedios:

•   Descuento por cupón si el usuario lo posee.
•	  Aplicación de IVA del 19% sobre el precio neto con descuento.
•	  Descuento adicional por cantidad: 5% si se compran más de una unidad.

## Costo de envío:

•	  $3.900 si el destino es Santiago.
•	  $8.000 si el destino es Regiones.
•   Si el peso bruto total del pedido excede 2 kg y el destino es Regiones, se aplican $500 por cada kilo adicional.

## Resultados:

•	Se calcula y muestra el precio final unitario con todos los descuentos e impuestos.
•	Se genera un arreglo con los precios por unidad, replicado según la cantidad comprada.

## Se muestra un resumen detallado con:

•   Subtotales
•   IVA
•   Descuentos
•   Costos por peso extra
•   Costo total de envío
•   Precio final del pedido completo

 ## Estructuras utilizadas:

•	  Condicionales (Si / Entonces / Sino): para aplicar descuentos, seleccionar destino, calcular exceso de peso, etc.
•	  Bucles (Para): para llenar un arreglo con los precios por unidad.
•	  Arreglo unidimensional: almacena el precio de cada unidad, aunque sean iguales, para facilitar el desglose final. Sirve más como demostración del uso de arreglos que una función práctica.
•	  Operaciones aritméticas: múltiples niveles de cálculo encadenado.

## Requisitos:

•	  Editor de pseudocódigo compatible con PSeInt.
•	  Conocimiento básico de estructuras condicionales, ciclos y variables.

## Objetivo educativo:

Este algoritmo es parte de un módulo de aprendizaje orientado a reforzar habilidades fundamentales de programación estructurada. El enfoque está en simular un escenario realista donde se deben combinar reglas de negocio con lógica computacional.
