numbers = [10, 5, 2, 20]

def factors(numbers)
	numbers.sort.each_with_object({}).each_with_index { |(int, result), index| 
	factor = numbers[0, index]
    results = factor.select {|f| int % f == 0 }
    result[int] = results 
}
end
puts factors(numbers)