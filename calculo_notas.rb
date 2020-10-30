grades = open('notas.data').readlines
student_lenght = []
student_lenght = grades[0].split(',')
n = student_lenght.size

first_student = []

n.times do |i|
    if i == 0
    else
        first_student.push(student_lenght[i].to_i)
    end
end

puts first_student.max
