open("input.txt") do file
    counter = 0
    for line in eachline(file)
        counter += floor(parse(Int,line)/3)-2
    end
    print(counter)
end
print("\n")
