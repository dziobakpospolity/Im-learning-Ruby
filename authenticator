#The Complete Ruby on Rails Developer Course (Udemy)
#Authenticator project

users = [ {username: "user1", password: "password1"}, {username: "user2", password: "password2"}, {username: "user3", password: "password3"}]

#authentication method
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times{print "-"}
puts

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"

  attempts += 1
end
puts "You have exceeded the number of attempts." if attempts == 4
