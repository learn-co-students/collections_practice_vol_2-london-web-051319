require "pry"

# your code goes here

def begins_with_r(array)
  # array.each do |x|
  array.all? {|element| element.to_s.split("").first == "r"}
end

def contain_a(array)
  array.select {|element| element.split("").include?("a")}
end

def first_wa(array)
  array.detect {|element| element.slice(0..1) == "wa"}  
end

def remove_non_strings(array)
  array.select {|element| element === "#{element}"}
end

def count_elements(array)  # Compare with languages test
  names = []
  counter = Hash.new(0)
  records = []
  i = 0
  until i == array.length
    names << array[i].fetch(:name)
    i += 1
  end
  names.each do |element|
    counter[element] += 1
  end
  counter.collect do |key, value|
    records << {name: key, count: value}
  end 
  records
end
# Check with team how else this could be done

def merge_data(h1, h2)  
  i = 0 
  mod_h2 = h2[0].values # because in this case the h2.length == 1
  new_array = []
  until i == h1.length
    new_array << h1[i].merge(mod_h2[i])
    i += 1
  end
  new_array
end
# Check with team about how else this could be done

def find_cool(hash)
  i = 0
  new_hash = {}
  until i == hash.length
    hash[i].keep_if {|k,v| v == "cool"} 
    i += 1
    hash.delete_if &:empty?
  end
  hash
end

def organize_schools(hash)
  locations = []
  new_hash = {}
  hash.each {|k, v| locations << v.fetch(:location)}
    locations.uniq!
  locations.each {|loc| new_hash[loc] = []}
  hash.map do |k, v|
  locations.any?(v.fetch(:location)) # If we hadn't already created the empty arrays inside the new_hash, we would need an if statement and a create and a push statement
    new_hash[v.fetch(:location)] << k
  end 
  new_hash
end

