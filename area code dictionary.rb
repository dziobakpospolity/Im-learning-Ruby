#The Complete Ruby on Rails Developer Course (Udemy)
#Area code dictionary

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  if somehash.key?(key)
   "The area code is: " + somehash[key]
  else
    "Wrong city name"
  end
end
 
# Execution flow
while true
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book) 
  puts "Enter your selection: "
  city_name = gets.chomp.downcase
  puts get_area_code(dial_book, city_name)
end
