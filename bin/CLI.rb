require_relative '../config/environment'


##

# def self.run 
#     puts "It's time to partayy!"
#     user_name = STDIN.gets.chomp
#     user = User.find_by(name: "#{user_name}")
#     if user == nil
#         puts "Welcome to the PartyPlanner!"
#         #leads to party_menu
#     else
#         puts "Welcome back, you party animal."
#         #leads to user_menu
#     end
# ## something in this line? insert a cartoon?
#     puts "What is the occasion? Enter a number from the following:"
#     puts "1. Kids"
#     puts "2. Formal"
#     puts "3. Casual/intimate"
#     puts "4. Casual/semi-professional"
#     puts "5. Dance Party"
#     puts "6. exit program"
#     #is_looping = true
#     #while is_looping
#     user_choice = STDIN.gets.chomp
#     if user_choice == "1" 
#         #self.kids_party
#     elsif user_choice == "2" 
#         #self.formal_party
#     elsif user_choice == "3" 
#         #self.cip_party
#     elsif user_choice == "4" 
#         #self.csp_party
#     elsif user_choice == "5" 
#         #self.dance_party
#     elsif user_choice == "6"  
#         puts "See ya later!"
#         #is_looping = false
#         #self.exit
#     end

# end

# def option_party
#     puts "Food: #{food_sample}, \n\ Playlist: #{rec_playlist1}."
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

################

def party_sample(party_type_num)
    var1 = food_sample
    var2 = music_sample
    puts "'#{party_type_num}. food:#{var1} album:#{var2}'"
end


def save_party_option 
    puts "Would you like to save this plan? Enter Y/N."
    user_input = STDIN.gets.chomp.downcase
    if user == "y"
        PartyPlan.create(username:["username"], item_name:["items"], party_type:["#{PARTY_TYPE_NUM_line115_catcli}"], item_type:["food or music"])
        puts "Saved!"
    else
        puts "Sending you back to main menu..."
        #def main_menu
    end
end

# def edit_delete_save_from_own_party_plan #from saved
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

# def self.update_delete_save_selections(user)
#     puts "Which part of your party plan would you like to remove?"
#     user_input = STDIN.gets.chomp
# end

# def method_selection
#     while is_looping = true
# puts "Enter an integer from the following:
# 1. Kids
# 2. Formal
# 3. Casual/intimate
# 4. Casual/semi-professional
# 5. Dance Party"

# user_input = gets.chomp.downcase

#     if user_input == "1"
#         return "Food: #{rec_foodlist1}, \n\ Playlist: #{rec_playlist1}."
#     elsif user_input == "2"
#         return "Food: #{rec_foodlist2}, \n\ Playlist: #{rec_playlist2}."
#     elsif user_input == "3"
#         return "Food: #{rec_foodlist3}, \n\ Playlist: #{rec_playlist3}."
#     elsif user_input == "4"
#         return "Food: #{rec_foodlist4}, \n\ Playlist: #{rec_playlist4}."
#     elsif user_input == "5"
#         return "Food: #{rec_foodlist5}, \n\ Playlist: #{rec_playlist5}."
#     elsif
#         puts "Your input is invalid, please try numbers 1-5."
#     else
#         is_looping = false
#     end
# end

# def method_asking_to_re_roll_or_save
#     puts "If you like the food and music selection and wants to save, input 1. If you would like to see other options, input 2. If you would just like to delete few and save, input 3"
# end

# method 1. 
#     save.migrate
#     puts "Your selection has been saved."
#     .inspect
#     puts "If you would like to add more options, press 1. If you would like to exit, input 2"   
#     user_input_2 = get.chomp
#     if user_input_2 == 1
#         method_selection
#     elsif user_input_2 == 2
#         exit!
#     end
# end

# method 2
#     method_selection
#     method_asking_to_re_roll_or_save
# end

# method 3
#     delete.save
#     method_asking_to_re_roll_or_save
# end

