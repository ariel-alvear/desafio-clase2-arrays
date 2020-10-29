
#If we want to display floating point numbers we need to use %f. We can specify the number of decimal places we want like this: %0.2f.

#file es el nombre del arhivo
#x es la primera posición del arreglo que queremos modificiar
#y es la última posición del arreglo que queremos modificar
#z es el modificador. (1.1 = aumentar 10%, 0.8 = disminuir 20%, etc)
#a es la primera posición del arreglo que queremos mantener intacta
#b es la última posición del arreglo que queremos mantener intacta

def sales_projections(file, x, y, z, a, b)
    sales_string = open(file).read.chomp.split(',')
    sales_integer = sales_string.map { |x| x.to_i }
    new_sales = []
    first_position_m = x
    final_position_m = y
    modifier = z
    first_position_nom = a
    final_position_nom = b
    for i in (first_position_m..final_position_m)
        new_sales.push (sales_integer[i] * z)
    end
    for i in (first_position_nom..final_position_nom)
        new_sales.push (sales_integer[i])
    end
    final_sum = [('%.2f' % new_sales.sum)]
    File.new("resultados.data", "w")
    File.write('resultados.data', final_sum.join("\n"))
end

sales_projections('ventas_base.db', 0, 5, 1.1, 6, 11)



