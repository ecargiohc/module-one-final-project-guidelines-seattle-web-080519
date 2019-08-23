require 'pry'
 class PartyPlanner
    @@current_user = ""

    def self.welcome
        puts "It's time to partayyy! \n \n"
        puts "Keep in mind!\n"
        puts "1. Username and passwords are case INsensitive."
        puts "2. Use only single digit integer for options"
        puts "3. Each username and password attempt will allow three times and return to the previous menu."
        puts "4. Enter '9' to exit at any time.\n \n"
    end

    def self.exit?(exit_num)
        if exit_num.to_s == "9"
            puts "See ya later, alligator."
            sleep(1)
            exit
        end
    end


    def self.secret_analysis(input1)
        if input1 == "6043"
        end
    end


    def self.username?
        i = 0
        while i < 3 do
            puts "."
            sleep(1)
            puts "."
            sleep(1)
            puts "Are you:"
            puts "1. Returning user"
            puts "2. New user \n"
            input1 = STDIN.gets.chomp.downcase
            exit?(input1)
            if input1.to_s == "1"
                puts "Welcome back, you party animal."
                var1 = log_in
                if var1 == 1 
                    i = 3
                else var1 == 0
                    i = 0
                end
                i += 1
            elsif input1.to_s == "2"
                puts "Welcome to"
                print "."
                sleep(0.5)
                print "."
                sleep(0.5)
                puts "."
                sleep(0.5)
                puts "the PARTY PLANNER! WOO HOO!"
                create_user
                i = 3
            else
                puts "Incorrect input. Code breaking!!"
            end 
        end
    end

    def self.log_in
        j = 0
        k = 0
        while j < 3 do
            puts "What was your username again?"
            username_input = STDIN.gets.chomp.downcase
            exit?(username_input)
            user_result = User.where(username:username_input)
            if user_result != []
                p = 0
                pt = 2
                while p < 3 do
                puts "Do verify its you with your password now."
                password = STDIN.gets.chomp.downcase
                exit?(password)
                    if user_result[0]["password"] == password
                        j = 4
                        p = 3
                        k = 1 
                        current_user = username_input
                    else
                        puts "Your password is incorrect. #{pt} tries left."
                        p += 1
                        j += 1
                        k = 0
                        pt -= 1
                    end
                end
            else
                puts "I don't think we've ever met before. Never heard of the username."
                j += 1
                k = 0
            end 
        end
        if k == 1 
            1
        elsif k == 0
            0
        else
            puts "Incorrect input. Code breaking!!"
        end
    end
    
    def self.create_user
        puts "Please tell me your username."
        i = 1
        while i == 1 do
            new_username = STDIN.gets.chomp.downcase
            exit?(new_username)
            x = User.where(username: new_username)
            if new_username == x
                puts "I already know someone by that name. Try different username."
            else
                puts "Accepted the new username. Please enter your new password."
                password = STDIN.gets.chomp.downcase
                exit?(password)
                User.create(username: new_username, password: password)
                i = 2
            end
        end
        puts "Accepted new user!"
        print "Make sure you remember your password" 
        sleep(0.5)
        print "."
        sleep(0.5)
        print "."
        sleep(0.5)
        puts "."
        puts "(Or you may never see your saved data again!)\n"
    end

    def self.main_menu
        i = 0
        while i == 0
            puts "\nMAIN MENU. \n
            Select from the following options. \n
            1. View my saved selection \n
            2. Edit my saved selection \n
            3. Search item and add to my selection \n
            9. exit (You may enter '9' at any time to exit) \n"
            option_num = STDIN.gets.chomp
            exit?(option_num)
            if option_num.to_s == "1"
                view_my_plan
                puts "Yay! These are the #{@@current_user}'s party selection!'"
                return_to_main_menu?
            elsif option_num.to_s == "2"
                update_my_plan
                puts "Hooray! Party selection is even better now."
                return_to_main_menu?
            elsif option_num.to_s == "3"
                party_options
            else
                puts "Incorrect input. Code breaking!!"
            end
        end
    end

    def self.return_to_main_menu?
        w = 0 
        puts "7. Main menu 9. exit (You may enter '9' at any time to exit)"
        while w == 0
            input = STDIN.gets.chomp
            exit?(input)
            if input == "7"
                w = 1
            end
        end
        1
    end

    def self.view_my_plan
        a = []
        b = []
        c = []
        d = []
        users_food = PartyPlan.where(username: @@current_user, item_type: "food")
        users_music = PartyPlan.where(username: @@current_user, item_type: "music")
        users_music.each do |m| 
            a << m.item_name
        end
        a.each.with_index { |x, i| b << "#{i+1}. #{x}"} 
        puts b.join(", ")
        users_food.each do |f|
            c << f.item_name
        end
        c.each.with_index { |x, i| d << "#{i+1}. #{x}"} 
        puts d.join(", ")
    end

    def self.update_my_plan
        a = []
        b = []
        c = []
        d = []
        users_food = PartyPlan.where(username: @@current_user, item_type: "food")
        users_music = PartyPlan.where(username: @@current_user, item_type: "music")
        users_food.each do |f|
            c << f.item_name
        end
        food = c.each.with_index { |x, i| d << "#{i+1}. #{x}"} 
                    puts "Your Food dishes: " + d.join(", ")
        users_music.each do |m| 
            a << m.item_name
        end
        music = a.each.with_index { |x, i| b << "#{i+1}. #{x}"}
                    puts "Your Music albums: " + b.join(", ")
        # 1
        # 1. Hysteria, 2. Faith, 3. The Wall

        puts "Would you like to edit 1. Food list, or 2. Music list?"
        puts "Enter number of choice:"
        item_type_choice = STDIN.gets.chomp.to_s
        if item_type_choice == "2"
            puts b #music
            b[0] 
            b[1] 
            b[2]
            puts "What is the number of the item you'd like to delete?"
            music_choice = STDIN.gets.chomp.to_s
            if music_choice == "1"
                b.delete_at(0)
                puts "The item has been deleted"
                puts "Your updated list:"
                puts b
            elsif music_choice == "2"
                b.delete_at(1)
                puts "The item has been deleted"
                puts "Your updated list:"
                puts b
            elsif music_choice == "3"
                b.delete_at(2)
                puts "Your updated list:"
                puts b
            else
                puts "Incorrect input. Code breaking!!"
            end
        end
    end


    def self.party_options 
       party_type_num = 0
     # i = 0
        j = 0
        food = food_sample
        music = music_sample
        binding.pry
        while j == 0
            puts "So"
            sleep(1)
            print "."
            sleep(1)
            print "."
            sleep(1)
            puts "."
            puts "What kind of party are you thinking about?"
            puts "Here are the choices:"
            puts "1. Kids \n"
            puts "2. Dance Party \n"
            puts "3. Casual/intimate \n"
            puts "4. Casual/semi-business \n"
            puts "5. Formal \n "
            party_type_num = gets.chomp
            exit?
            k = 0
            while k == 0 
                puts "Here are some foods and music that I've thought of."
                puts "Food: #{food}, \n\ Playlist: #{music}."
                puts "What would you like to do now?"
                puts "1. Save the selection \n"
                #puts "2. Edit before saving \n" 
                puts "3. Show me another selection"
                what_to_do = gets.chomp
                exit?
                if what_to_do.to_s == "1"
                    save_party_option
                    return_to_party_choices?
                elsif what_to_do == "2"
                    #delete array
                    #save to db
                    #return_to_party_choices?
                elsif what_to_do == "3"
                    k = 0
                else
                    puts "Incorrect input. Code breaking!!"
                end 
            end
        end
        main_menu
    end

    def return_to_party_choices?
        puts "1. I want to go back to my main menu \n2. Hmmm.. I'm thinking of a different party now.\n 3. Another party selections for the same party \n 9. exit (You may enter '9' at any time to exit)"
        input = gets.chomp
        exit?(input)
        if input.to_s == "1"
            k = 1
            j = 1
            i = 0
        elsif input.to_s == "2"
            k = 1
            j = 0
            i = 0
        elsif input.to_S == "3"
            k = 0
        else
            puts "Incorrect input. Code breaking!!"
        end
    end
    def self.save_party_option
        puts "Would you like to save this plan? Enter Y/N."
        user_input = STDIN.gets.chomp.downcase.to_s
        if user_input == "y"
            food.each do |f|
                PartyPlan.create(username: current_user, item_name: f, item_type: "food", party_type: party_type_num)
            end
            music.each do |m|
                PartyPlan.create(username: current_user, item_name: m, item_type: "music", party_type: party_type_num)
            end
            puts "Saved!"
        elsif user_input == "n"
            puts " "
        else
            puts "Incorrect input. Code breaking!!"
        end
    end


end