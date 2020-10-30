def chart(arr)
    n = arr.size
    border = arr.max
    (n + 2).times do |x|
        if x < n
            print "|"
            arr[x].times do |j|
                print "**"
            end
        elsif x == n
            print ">"
            border.times do |j|
                print " -"
            end
        else
            print " "
        end
        print "\n"
    end
    k = 0
    while k < border  #esto hace que el gráfico muestre 1 al llegar a 10, 2 al llegar a 20, n al llegar a n0. y el resto hace el conteo 1-9
        x = (k + 1).to_s
        if (k + 1) % 10 == 0
            print " #{x[0]}"
        elsif k >= 10
            print " #{x[1]}"
        else
            print " #{k + 1}"
        end
        k += 1
    end
    print "\n"
end

array = ARGV.map {|x| x.to_i }

chart(array)

