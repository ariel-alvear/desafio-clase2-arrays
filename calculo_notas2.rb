def higher_grade2(arr)
    highest_ranks = []
    n = arr.size
    n.times do |i|
        student_lenght = []
        student_lenght = arr[i].split(',')
        n1 = student_lenght.size
        student = []
        n1.times do |j|
            if j != 0
                student.push(student_lenght[j].to_i)
            end
        end
        highest_ranks << student.max
    end
    highest_ranks
end

grades = open('notas.data').readlines

print higher_grade2(grades)