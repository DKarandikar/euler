def eratosthenes(num)
    a = {}
    (2..num).each {|n| a[n] = true}
    (2..Math.sqrt(num).floor).each do |i|
        if a[i**2] then
            (i**2..num).step(i) {|j| a[j] = false}
        end
    end
    a.select {|k, v| v}.keys
end