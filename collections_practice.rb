require "pry"

def begins_with_r(tools_array)
	arr = []
	tools_array.each do |tools|
		if tools[0] == "r"
			arr << tools
		end
	end
	tools_array == arr ? true : false
end

def contain_a(tools_array)
	arr = []
	tools_array.each do |tools|
		if tools.include? "a" 
			arr << tools
		end
	end
	arr
end

def first_wa(tools_array)
	arr = []
	tools_array.each do |tools|
		if tools[0] == "w" && tools[1] == "a"
			return tools
		end
	end
end

def remove_non_strings(tools_array)
	arr = []
	tools_array.each do |tools|
		if tools.is_a?(String)
			arr << tools
		end
	end
	arr
end

def count_elements(name_array)
	name_array.uniq.each do |unique_name_hash|
		count = 0
		name_array.each do |all_name_hash|
			if unique_name_hash == all_name_hash then count += 1
			end
		end
		unique_name_hash[:count] = count
	end
end

def merge_data(keys,data)
	merged = []
	data.each do |all_names_hash|
		all_names_hash.each do |person_firstname, person_values|
			keys.each do |key_value|
				merged << key_value.merge(person_values) if key_value.values[0] == person_firstname
				# this is checking for each key value pair in the keys array we are merging
				# "add the merged value if the first value in keys matches the person's first name in person_values"
			end
		end
	end
	merged
end

def find_cool(array)
	arr = []
	array.each do |attr_hash|
		attr_hash.each do |key,value|
			if value == "cool"
				arr << attr_hash
			end
		end
	end
	arr
end

def organize_schools(schools)
	new_hash = Hash.new 
	schools.each do |school_name, attr_hash|
		new_hash[attr_hash[:location]] = []
		# sets a location key for each city in the new_hash with key empty array
	end

	new_hash.each do |city_name, school_array| 
	# iterates over the new_hash we created
		schools.each do |school_name, location_hash|
		#iterates over the original schools hash
			if city_name == location_hash[:location] 
			# if city_name in the new_hash == the location in the original schools hash
				school_array << school_name 
				# spade the school name into the new array we created 
			end
		end
	end
	new_hash
end










