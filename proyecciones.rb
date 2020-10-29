=begin 
Pasos a seguir:
3) crear un nuevo arreglo con los primeros 6 elementos aumentados un 10%
4) sumar los elementos del arreglo
5) Repetir de 1 a 4, pero en paso dos, en vez de un 10% a los primeros 6, se debe aumentar un 20% a los ultimos 6
6) imprimir los 2 totales en un nuevo archivo con máximo 2 decimales
7) convertir a metodo

If we want to display floating point numbers we need to use %f. We can specify the number of decimal places we want like this: %0.2f.
=end


sales_string = open('ventas_base.db').read.chomp.split(',') #tomamos datos de archivo externo y convertimos en arreglo
sales_integer = sales_string.map { |x| x.to_i } #son integers ahora
new_sales = []
for i in (0..5)
    new_sales.push (sales_integer[i] * 1.1)
end




print new_sales



