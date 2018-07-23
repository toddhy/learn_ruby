def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def sum array
	count = array.length
	sum = 0
	
	while count > 0
		sum += array[count - 1]
		count -= 1
	end
	
	sum

end
