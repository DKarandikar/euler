def get_repeating(num)
    remainder = 1
    soFar = [1]
    while true do
        remainder = (remainder*10) % num
        if remainder == 0 then
            # Not repeating 
            return 0
        end 

        if soFar.include? remainder then 
            # Slice for repeating sub cycles like 0.16666
            soFar = soFar.slice(soFar.index(remainder), soFar.length - soFar.index(remainder))
            break
        end
        soFar.append(remainder)
    end
    soFar.length
end

def main
    max_number = 0
    max_value = 0
    (2..1000).each() do |num|
        repeating_cycle = get_repeating(num)
        if repeating_cycle > max_value then 
            max_value = repeating_cycle
            max_number = num
        end
    end
    puts "Answer is: #{max_number}"
end

main()