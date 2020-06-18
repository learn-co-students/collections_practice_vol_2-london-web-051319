# your code goes here
def begins_with_r(arr)
  arr.all? {|x| x[0] == "r"}
end

def contain_a(arr)
  arr.select {|x| x.include?("a")}
end

def first_wa(arr)
  arr.find {|x| x[0..1] == "wa"}
end

def remove_non_strings(arr)
  arr.delete_if {|x| !(String === x)}
end

def count_elements(arr)
  arr_new = arr.uniq
  arr_new.map do |x|
    x[:count] = arr.count(x)
    x
  end
end

def merge_data(keys, data)
  keys.map do |x|
    data[0][x[:first_name]].merge(x)
  end
end

def find_cool(arr)
  arr.select {|hash| hash[:temperature] == "cool"}
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |school, details|
    new_hash[details[:location]] = [] if new_hash[details[:location]].nil?
    new_hash[details[:location]] << school if !new_hash[details[:location]].include?(school)
  end
  new_hash
end
