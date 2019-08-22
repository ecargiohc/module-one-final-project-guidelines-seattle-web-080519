# def welcome
#     puts "Please input options as single digit integer without . or other letters unless asked otherwise. enter '9' to exit at any time."
# end

# ##following method wherever gets.chomp happens
# def exit?(exit_num)
#     if exit_num.to_s == "9"
#         #somehow exit the program
#         i = 1
#     end
# end

# def username?
#     #while loop for failed log-ins 
#     puts "Please input 1 if you already have a username. Input 2 if you need to create a username"
#     input1 = gets.chomp
#     exit?(input1)
#     if input1.to_s == "1"
#         log_in
#     elsif input2.to_s == "2"
#         create_user
#     end 
# end

# def log_in
#     puts "Please input your username"
#     i = 0
#     while i < 3 
#         username_input = gets.chomp
#         exit?(username_input)
#         if #username table exists
#             puts "please input your password"
#             password = gets.chomp
#             exit?(password)
#             if #username attribute password exists
#                 i = "done"
#             else
#                 puts "your password is incorrect. please try again"
#                 i += 1
#             end
#         else
#             puts "your username does not exist please try again"
#             i += 1
#         end 
#     end
#     username?
    
# end

# def create_user
#     puts "Please enter new username."
#     i = 1
#     while i == 1
#         new_username = gets.chomp
#         exit?(new_username)
#         if new_username exists,
#             puts "username exists, please input different username."
#         else
#             #create_username table, column name 'password'
#             puts "please input new password."
#             password = gets.chomp.downcase
#             exit?(password)
#             #migrate password
#         end
#     end
# end

# def return_to_main_menu?
#     puts "1. Main menu 9. exit (You may enter '9' at any time to exit)"
#     input = gets.chomp
#     exit?(input)
#     if input == "1"
#         i = 1
#     end
# end

# def main_menu
#     i = 0
#     while i == 0
#         puts "Choose from following. 
#         1. View my saved selection 
#         2. Edit my saved selection
#         3. Search and add to my selection
#         9. exit (You may enter '9' at any time to exit)"
#         option_num = gets.chomp
#         if option_num.to_s == "1"
#             #.inspect
#             return_to_main_menu?
#         elsif option_num.to_s == "2"
#             #.inspect
#             delete_selected 
#             return_to_main_menu?
#         elsif option_num.to_S == "3"
#             party_options
#         end
#     end
# end

# def delete_selected(arr)
#     #given the array, edit as wanted 
# end 


# def party_options 
#  # i = 0
#     j = 0
#     binding.pry
#     while j == 0
#         puts "Input party type: 
#         1. Kids 
#         2. Dance Party 
#         3. Casual/intimate 
#         4. Casual/semi-business 
#         5. Formal"
#         party_type_num = gets.chomp ********#this is the party_type number
#         exit?
#         k = 0
#         while k == 0 
# grace155    party_sample(party_type_num)
#             puts "1. Save the sample to my party plan \n 2. Edit my sample \n 3. Show me another sample"
#             what_to_do = gets.chomp
#             exit?
#             if what_to_do.to_s == "1"
#                 save_party_option
# grace                #save to db
#                 return_to_party_choices?
#             elsif what_to_do == "2"
#                 edit_delete_save_from_party
# grace                #delete array
# grace                #save to db
#                 return_to_party_choices?
#             elsif what_to_do == "3"
#                 k = 0
#             end 
#         end
#     end
#     return_to_main_menu?
# end

# def return_to_party_choices?
#     puts "1. Main menu 2. party options 3. Another party sample of previous choice 9. exit (You may enter '9' at any time to exit)"
#     input = gets.chomp
#     exit?(input)
#     if input.to_s == "1"
#         k = 1
#         j = 1
#         i = 0
#     elsif input.to_s == "2"
#         k = 1
#         j = 0
#         i = 0
#     elsif input.to_S == "3"
#         k = 0
#     end
# end

# grace def party_sample(party_type_num)
#     PartyPlan.new(party_type_num)
#     puts "music: " +  + ", food:"

# end 

# def save_party_option 
#     user_input = STDIN.gets.chomp.downcase
#     if user == "y"
#         PartyPlan.create(username:["username"], item_name:["items"], party_type:["#{PARTY_TYPE_NUM_line115_catcli}"], item_type:["food or music"])
#         puts "Saved!"
#     else
#         puts "Sending you back to main menu..."
#         #def main_menu
#     end
# end

# def edit_delete_from_party #from saved
#     puts "Which (aspect?) of your party would you like to remove?"
#     counter = 1
#     users_party = user.party_plan.collect do |p|
#         puts "#{counter}. #{party_type}" #displays saved party option items
#         counter += 1
#     end 
#     puts "Choose party item(s) to remove:"
#     user_input = STDIN.gets.chomp
#     display_party_saved = #
# end