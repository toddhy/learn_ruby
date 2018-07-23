def ftoc far
	((far - 32) * (5.0 / 9.0)).floor
end

def ctof cel
	(cel * (9.0/5.0) + 32)
end

# F is 5/9 of 1 degree C
# # 0 degree C is 32 F
