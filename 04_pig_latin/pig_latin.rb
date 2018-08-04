def translate(word)
	count = word.split
	vowels = 'aeiouAEIOU'
	start_cons = ""
	i = 0
	array = []
	count.each do |w|
		if vowels.include? w[0]
			 array << w[0..-1] + 'ay'
		else
			while i < w.length
				unless vowels.include? w[i]
					if w[i] == 'q'
						start_cons << w[i] + 'u'
						i += 2
					else
						start_cons << w[i]
						i += 1
					end
				else vowels.include? w[i]
					break
				end
			end
			array << w[i..-1] + start_cons + 'ay'
		end
	end	
	array.join(",").gsub(',', ' ')
end
