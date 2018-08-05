class Timer
	attr_accessor :seconds

	def initialize()
		@seconds = 0
	end

	def time_string
		clock = calculate(@seconds)
		@time_string = padded(clock[0]) + ':' + padded(clock[1]) + ':' + padded(clock[2])
	end

	def padded(value)
		if value.to_s.length < 2
			return '0' + value.to_s
		else
			return value.to_s
		end
	end
	
	def calculate(s)
		h = m = 0
		while s >= 60
			if s >= 3600
				h = s/3600
				s = s % (h * 3600)
			else 
				m = s/60
				s = s % (m * 60) 
			end
		end
		return [h, m, s]
	end
end
