def higher_grade2(arr)
    student_lenght = []
    student_lenght = arr.split(',')
    n = student_lenght.size
    student = []
    n.times do |i|
        if i != 0
            student.push(student_lenght[i].to_i)
        end
    end
    highest_grade = student.max
    highest_grade
end

grades = open('notas.data').readlines

n = grades.size

highest_ranks = []

n.times do |i|
    highest_ranks << higher_grade2(grades[i])    
end

puts highest_ranks