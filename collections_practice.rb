def begins_with_r(array)
  array.each do |it|
    if !it.to_s.start_with?("r")
      return false
    end
  end
  return true
end


def contain_a(array)
  a_array = []
  array.each do |thing|
    if thing.include?("a"||"A")
      a_array << thing
    end
  end
  a_array
end

def first_wa(array)
  first_wa_word = ""
  array.find do |it|
    if it[0..1] == "wa"
      first_wa_word = it
    end
  end
  first_wa_word
end

def remove_non_strings(array)
  new_array = []
  array.each do |thing|
    if thing.is_a?(String)
      new_array << thing
    end
  end
  new_array
end

def count_elements(data)
  new_hash = {}
  data.each do |thing|
    if new_hash.has_key?(thing[:name])
      new_hash[thing[:name]] += 1
    else
      new_hash[thing[:name]] = 1
    end
  end
  new_hash.map { |key, value| {:name => key , :count => value} }
end

def merge_data(keys, data)
  new_array = []

  keys.each do |thing|
    thing.each do |lable, value|
      data.each do |nested_thing|
        nested_thing.each do |key,hash|
          if value == key
            new_array << thing.merge(hash)
          end
        end
      end
    end
  end
   new_array
end

def find_cool(array)
  new_array = []
  array.each do |thing|
    if thing[:temperature] == "cool"
      new_array << thing
    end
  end
  new_array
end

def organize_schools(array)
  schools_org = {}

  array.each do |name, details|
    location = details[:location]
    if !schools_org[location]
      schools_org[location] = []
    end
    if !schools_org[location].include?(name)
      schools_org[location]<< name
    end
  end
  schools_org
end 
