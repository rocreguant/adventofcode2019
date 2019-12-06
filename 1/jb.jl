function count_fuel(mass)
    
    aux = floor(mass/3)-2
    
    if aux > 0
        return aux + count_fuel(aux)
    else
        return 0
    end
end

open("input.txt") do file
    counter = 0
    for line in eachline(file)
        counter += count_fuel(parse(Int,line))
    end
    print(string(counter))
end
print("\n")
