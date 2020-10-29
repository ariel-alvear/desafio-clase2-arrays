
#If we want to display floating point numbers we need to use %f. We can specify the number of decimal places we want like this: %0.2f.

#file es el nombre del arhivo
#x es la primera posición del arreglo que queremos modificiar
#y es la última posición del arreglo que queremos modificar
#z es el modificador. (1.1 = aumentar 10%, 0.8 = disminuir 20%, etc)

def sales_projections(file, x, y, z)
    sales_string = open(file).read.chomp.split(',')
    sales_integer = sales_string.map { |x| x.to_i }
    new_sales = []
    first_position_m = x
    final_position_m = y
    modifier = z
    n = sales_integer.size
    n.times do |e|
        if e >= x && e <= y 
            new_sales.push(sales_integer[e] * z)
        else
            new_sales.push(sales_integer[e])
        end
    end
    final_sum = [('%.2f' % new_sales.sum)]
    File.new("resultados.data", "w")
    File.write('resultados.data', final_sum.join("\n"))
end

sales_projections('ventas_base.db', 0, 5, 1.1)


