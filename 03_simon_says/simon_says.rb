def echo string
	string
end

def shout string
    string.upcase
end

def repeat (string, times=nil)
	repeat = ""
	i = times
	if times.nil?
	    repeat = string + " " + string
	elsif i > 0 
		while i > 0
#			print i.to_s + "\t" + repeat + "\t" + string + "\n"
			repeat << string + " "
			i -= 1
		end
	end
	
	repeat.rstrip
end

def start_of_word (word, num)
	word[0, num]
end

def first_word phrase
	i = 0
	fword = ""

	while i < phrase.length
		if phrase[i] == " "
			break
		else
			fword << phrase[i]
			i += 1
		end
	end
	fword
end

def titleize title
	i = 0		
	placeholder = 0
	newtitle = ""
	lw = ["and", "the", "over"]
	while i <= title.length
		if title[i] == " "
			if  lw.include? first_word(title[placeholder, i]) and placeholder > 0
				newtitle << first_word(title[placeholder, i])
				newtitle << " "
				placeholder = i + 1
				i += 1
			else
				newtitle << first_word(title[placeholder, i]).capitalize
				newtitle << " "
				placeholder = i + 1
				i += 1
			end
		elsif i == title.length
			newtitle << first_word(title[placeholder, i]).capitalize
			break
		else
			i += 1
		end
	end
	newtitle
end
