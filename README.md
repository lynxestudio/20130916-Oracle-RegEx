# Regular Expressions en PL/SQL Oracle, parte I

Una expresión regular (regular expression) es un conjunto de caracteres (signos) conocido como patrón que al buscarse coincide una o más veces en una cantidad considerable de texto, estos patrones se construyen con una notación de caracteres ordinarios y metacaracteres, los cuales tienen un significado especial dentro de la expresión regular e indican las reglas a las que deben someterse los caracteres ordinarios para su interpretación estos bloques básicos de construcción son similares a una expresión algebraica o a un mini lenguaje de programación.

A continuación algunos de los metacaracteres y su significado:

^ coincide el patrón de búsqueda al inicio de una línea.
$ coincide el patrón de búsqueda al final de una línea.
. coincide cualquier caracter en cualquier lugar.
[] especifica un rango de caracteres
? ubica un caracter opcional.
+ ubica uno o más caracteres.
- ubica cero o más caracteres.
{n} ubica un caracter que aparece n veces.
{n,} ubica un caracter que aparece n o más veces.
{n,m}ubica un caracter que aparece de n a m veces.
| disyunción o sea un or lógico entre caracteres.
Las expresiones regulares son ampliamente utilizadas en Linux o en otros lenguajes Open Source, además de plataformas como Java y.NET y en bases de datos como PostgreSQL y Oracle. En Oracle las expresiones regulares son utilizadas cada vez que necesites operaciones de búsqueda demasiado complicadas en donde los comandos SELECT y LIKE no sean suficientes. Oracle tiene las siguientes cuatro funciones para su utilización:

REGEXP_LIKE: es la versión de expresiones regulares del comando LIKE. Una función booleana que regresa TRUE,FALSE o NULL si en el texto existe una coincidencia con la expresión regular.
REGEXP_INSTR: esta función regresa la posición del caracter en el texto donde se encontró una coincidencia con la expresión regular.
REGEXP_SUBSTR: extrae una coincidencia de texto encontrada con la expresión regular.
REGEXP_REPLACE: ejecuta una operación de búsqueda y reemplazo si se encuentra una coincidencia en el texto.
Como ejemplo de su uso, creamos la siguiente tabla:



Después insertamos los siguientes registros para comenzar a utilizar las funciones.

Elizabeth  Bishop 36736-36738 976.063 02/08/1911
Charles Dickens 36734-5461 2244.789 07/02/1812
Jack London 5462-37314 898.127 12/01/1876
Joseph Conrad 37315-5463 1193.493 03/12/1857
Gustave Flaubert 37313-37316 1435.384 12/12/1821
John Milton 37317-37296 1348.582 09/12/1608
Samuel Taylor 37292-37318 207.449 21/10/1772
Virginia Wolf 37061-106 2077.947 25/01/1882
Walter  Scott 37319-37320 412.72 15/08/1771
Robert Louis  Stevenson 37945-37946 1033.54 13/11/1850
Joseph Rudyard  Kipling 37947-12556 382.41 30/12/1865
Arthur Conan Doyle 12557-10964 1844.945 22/05/1859
George  Orwell 54722-3236 2139.874 25/01/1903


Como primer ejemplo utilizamos la función REGEXP_LIKE para obtener de la columna MEMBERSHIP_LASTNAME los regitros que comienzan con la letra D.La consulta es:





Ahora utilizamos la función REGEXP_LIKE para obtener de la columna MEMBERSHIP_DUE los regitros que terminan con el número 3.La consulta es:





Por último, utilizamos la función REGEXP_LIKE para obtener de la columna MEMBERSHIP_LASTNAME los regitros que tengan las letras de la A a la F. La consulta es:





Ahora ejemplos con la función REGEXP_INSTR. En el primer ejemplo buscamos los registros que en la columna MEMBERSHIP_NAME tengan de 1 a 2 veces la letra A y cuyo posición de coincidencia del texto sea mayor a 0.





En este segundo ejemplo con REGEXP_INSTR buscamos todos los registros que en la columna MEMBERSHIP_NAME comiencen con la letra J o la letra E.





Un último ejemplo con REGEXP_INSTR buscamos todos los registros que en la columna MEMBERSHIP_DATE terminen en el penúltimo dígito del 0 al 9 y en el último dígito del 1 al 2.




