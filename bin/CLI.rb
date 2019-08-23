# require_relative '../config/environment'
# class PartyPlanner
#     @@current_user = ""
#     def self.welcome
#         puts "1. Please input options as single digit integer without any other letters unless asked otherwise. 2. Each log_in attempt will allow 3 times and return to previous menu. 3. enter '9' to exit at any time."
#     end

#     ##place following method wherever gets.chomp happens
#     def self.exit?(exit_num)
#         if exit_num.to_s == "9"
#             exit
#         end
#     end

#     def self.username?
#         i = 0
#         while i < 3 do
#             puts "Please input 1 if you already have a username. Input 2 if you need to create a username"
#             input1 = STDIN.gets.chomp.downcase
#             exit?(input1)
#             if input1.to_s == "1"
#                 var1 = log_in
#                 if var1 == 1 
#                     i = 3
#                 else var1 == 0
#                     i = 0
#                 end
#                 i += 1
#             else input1.to_s == "2"
#                 create_user
#                 i = 3
#             end 
#         end
#     end

#     def self.log_in
#         j = 0
#         k = 0
#         while j < 3 do
#             puts "Please input your username"
#             username_input = STDIN.gets.chomp.downcase
#             exit?(username_input)
#             user_result = User.where(username:username_input)
#             if user_result != []
#                 p = 0
#                 while p < 3 do
#                 puts "please input your password"
#                 password = STDIN.gets.chomp.downcase
#                 exit?(password)
#                     if user_result[0]["password"] == password
#                         j = 4
#                         p = 3
#                         k = 1 
#                         current_user = username_input
#                     else 
#                         puts "your password is incorrect."
#                         p += 1
#                         j += 1
#                         k = 0
#                     end
#                 end
#             else
#                 puts "your username does not exist."
#                 j += 1
#                 k = 0
#             end 
#         end
#         if k == 1 
#             1
#         else k == 0
#             0
#         end
#     end

#     def self.create_user
#         puts "Please enter new username."
#         i = 1
#         while i == 1 do
#             new_username = STDIN.gets.chomp.downcase
#             exit?(new_username)
#             x = User.where(username: new_username)
#             if new_username == x
#                 puts "username exists, please input different username."
#             else
#                 puts "please input new password."
#                 password = STDIN.gets.chomp.downcase
#                 exit?(password)
#                 User.create(username: new_username, password: password) #create_username table, column name 'password'
#                 i = 2
#             end
#         end
#         puts "new user has been created"
#     end

#     def self.return_to_main_menu?
#         w = 0 
#         puts "1. Main menu 9. exit (You may enter '9' at any time to exit)"
#         while w == 0
#             input = STDIN.gets.chomp
#             exit?(input)
#             if input == "1"
#                 w = 1
#             end
#         end
#     end

#     def self.main_menu
#         i = 0
#         while i == 0
#             puts "Choose from following. 
#             1. View my saved selection 
#             2. Edit my saved selection
#             3. Search and add to my selection
#             9. exit (You may enter '9' at any time to exit)"
#             option_num = STDIN.gets.chomp
#             exit?(option_num)
#             if option_num.to_s == "1"
#                 #.inspect
#                 return_to_main_menu?
#             elsif option_num.to_s == "2"
#                 #.inspect
#                 # delete_selected 
#                 return_to_main_menu?
#             elsif option_num.to_s == "3"
#                 # party_options
#             end
#         end
#     end

# ##

# def self.update_my_plan(current_user)
#     #display user's saved party plan 
#     # self.view_my_plan(current_user)
#     counter = 1
#     users_food = PartyPlan.all.select(username: current_user, item_type: "food")
#     # .map { |p| p.index+"."+p[0].item_name}
#     users_music = PartyPlan.all.select(username: current_user, item_type: "music")
#     #     puts "Food: #{users_food} \n Music: #{users_music}" #displays saved party option items

#     puts "Which part of your party plan would you like to edit?"
#     puts "Enter number of choice:"
#     user_input = STDIN.gets.chomp.to_i
#     puts "What would you like to do with this? 1. Delete 2. Look at other samples?"
#         user_input = STDIN.gets.chomp.to_i
#         if user_input == "1"
#             puts "Choose plan to remove:"
#             user_input = STDIN.gets.chomp.to_i 
#             deleted_plan = users_party[user_input-1]
#                     #this keeps looping: "1. Save the sample to my party plan \n 2. Edit my sample \n 3. Show me another sample"
#             puts "Your updated plans:"
#             # user_input = STDIN.gets.chomp 
#             new_plan = deleted_plan.update(item_name: user_input)
#             new_plan.save
#             puts new_plan
#         else
#             show_me_another_sample
#         end
#     end
# end

# def option_party
#     puts "Food: #{food_sample}, \n\ Playlist: #{music_sample}."
# #where to loop?
#     puts "What do you think? Enter a number from the following:"
#     puts "1. Save this search."
#     puts "2. Go back to main menu/search again."
#     puts "3. Edit list and save."
#     puts "4. exit program"
#     user_input = STDIN.gets.chomp
#     user_input = user_input.to_i #insures always integer
#     #is_looping = true
#     #while is_looping
#     if user_input == "1"
#         #self.save
#     elsif user_input == "2"
#         #self.random/sample 
#     elsif user_input == "3"
#         #self.delete, .update, .save
#     elsif user_input == "4"
#         puts "See ya later, alligator."
#         #is_looping = false
# end

# ################

# #from here: 
# # "1. Save the sample to my party plan \n 2. View my sample 3. Edit my sample \n 4. Delete from my plan \n 5. Show me another sample" #this menu should loop
# # user_input = STDIN.gets.chomp
# #     user_input = user_input.to_i 
# # if user_input == "1"
# #     save_party_option
# # elsif user_input == "2"
# #     view_my_plan(user)
# # elsif user_input == "3"
# #     update_my_plan(user)
# # elsif user_input == "4"
# #     delete_from_my_saved_plan
# # elsif user_input == "5"
# #     show_me_another_sample(party_type_num)
# # end


# def show_me_another_sample
#     puts "What is the occasion? Enter a number from the following:"
#     puts "1. Kids"
#     puts "2. Formal"
#     puts "3. Casual/intimate"
#     puts "4. Casual/semi-professional"
#     puts "5. Dance Party"
#     user_num = STDIN.gets.chomp
#     user_num = user_num.to_s
#     if user_num <= "5"

#     #(party_type_num) #does main menu appear here again, dispaying party types 1-5?
#     puts "Here is another option:" #displays party sample/array of food+music combo
#     f_food = PartyPlan.new({
#         item_name: Faker::Food.dish,
#         item_type: "food"
#     })
#     f_music = PartyItemList.new({
#         item_name: Faker::Music.album,
#         item_type: "music"
#     })
#     puts "'#{user_num}. dish: #{f_food.item_name}, album: #{f_music.item_name}'"
#     #this still loops: puts "puts 1. Save the sample to my party plan \n 2. Edit my sample \n 3. Show me another sample"
#     puts "You happy?"
#     user_input = STDIN.gets.chomp
#     user_input = user_input.to_s.downcase
#     if user_input == "y"
#         puts "Let's save this shit"
#         self.save_party_option(user)
#     else 
#         puts "Let's keep searching"
#         self.show_me_another_sample
#     end
# end

# # def self.save_party_option(current_user)
# #     puts "Would you like to save this plan? Enter Y/N."
# #     user_input = STDIN.gets.chomp.downcase.to_s
# #     if user_input == "y"
#         # new_plan = PartyPlan.create(username: current_user, item_name: [
#         #     (Faker::Food.dish, item_type: "food"), (Faker::Music.album, item_type: "music")], party_type: 1)
#         # puts new_plan
#         # puts "Saved!"
#     # else
#     #     # insert this loop method: puts "puts 1. Save the sample to my party plan \n 2. Edit my sample \n 3. Show me another sample"
#     #     # or this: puts "Sending you back to main menu..."
# #     #     #def main_menu
# #     end
# # end


# def self.view_my_plan(current_user) 
#     PartyPlan.all.select do |plan|
#         if plan.username == current_user 
#             puts "Your event has #{plan.item_type}: #{plan.item_name}"
#         end
#     end
# end





# end
