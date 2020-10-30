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
    while k < border
        print " #{k + 1}"
        k += 1
    end
    print "\n"
end

array = [5, 3, 2, 5, 10]

chart(array)