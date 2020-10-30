=begin
 El siguiente método recibe una posición de arreglo, por ejemplo "arreglo[1]", en donde ese arreglo trae 5 elementos de un estudiante, siendo el primero un nombre y los otros notas, ejemplo: [Ariel, 4, 6, 5, 4]
 Lo que hace el método es tomar esta posición de arreglo, lo convierte en arreglo, y luego nos devuelve el número mayor.   
=end


def higher_grade(arr)
    student_lenght = []
    student_lenght = arr.split(',')
    n = student_lenght.size
    student = []
    n.times do |i|
        if i == 0
        else
            student.push(student_lenght[i].to_i)
        end
    end
    highest_grade = student.max
    highest_grade
end

grades = open('notas.data').readlines

puts higher_grade(grades[0])