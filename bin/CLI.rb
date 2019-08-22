require 'pry'
 class PartyPlanner
    @@current_user = ""
    def self.welcome
        puts "1. Please input options as single digit integer without any other letters unless asked otherwise. 2. Each log_in attempt will allow 3 times and return to previous menu. 3. enter '9' to exit at any time."
    end

    ##place following method wherever gets.chomp happens
    def self.exit?(exit_num)
        if exit_num.to_s == "9"
            exit
        end
    end

    def self.username?
        i = 0
        while i < 3 do
            puts "Please input 1 if you already have a username. Input 2 if you need to create a username"
            input1 = STDIN.gets.chomp.downcase
            exit?(input1)
            if input1.to_s == "1"
                var1 = log_in
                if var1 == 1 
                    i = 3
                else var1 == 0
                    i = 0
                end
                i += 1
            else input1.to_s == "2"
                create_user
                i = 3
            end 
        end
    end

    def self.log_in
        j = 0
        k = 0
        while j < 3 do
            puts "Please input your username"
            username_input = STDIN.gets.chomp.downcase
            exit?(username_input)
            user_result = User.where(username:username_input)
            if user_result != []
                p = 0
                while p < 3 do
                puts "please input your password"
                password = STDIN.gets.chomp.downcase
                exit?(password)
                    if user_result[0]["password"] == password
                        j = 4
                        p = 3
                        k = 1 
                        current_user = username_input
                    else 
                        puts "your password is incorrect."
                        p += 1
                        j += 1
                        k = 0
                    end
                end
            else
                puts "your username does not exist."
                j += 1
                k = 0
            end 
        end
        if k == 1 
            1
        else k == 0
            0
        end
    end

    def self.create_user
        puts "Please enter new username."
        i = 1
        while i == 1 do
            new_username = STDIN.gets.chomp.downcase
            exit?(new_username)
            x = User.where(username: new_username)
            if new_username == x
                puts "username exists, please input different username."
            else
                puts "please input new password."
                password = STDIN.gets.chomp.downcase
                exit?(password)
                User.create(username: new_username, password: password) #create_username table, column name 'password'
                i = 2
            end
        end
        puts "new user has been created"
    end

    def self.return_to_main_menu?
        w = 0 
        puts "1. Main menu 9. exit (You may enter '9' at any time to exit)"
        while w == 0
            input = STDIN.gets.chomp
            exit?(input)
            if input == "1"
                w = 1
            end
        end
    end

    def self.main_menu
        i = 0
        while i == 0
            puts "Choose from following. 
            1. View my saved selection 
            2. Edit my saved selection
            3. Search and add to my selection
            9. exit (You may enter '9' at any time to exit)"
            option_num = STDIN.gets.chomp
            exit?(option_num)
            if option_num.to_s == "1"
                #.inspect
                return_to_main_menu?
            elsif option_num.to_s == "2"
                #.inspect
                # delete_selected 
                return_to_main_menu?
            elsif option_num.to_s == "3"
                # party_options
            end
        end
    end

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
    #         party_type_num = gets.chomp
    #         exit?
    #         k = 0
    #         while k == 0 
    #             party_sample(party_type_num)
    #             puts "1. Save the sample to my party plan \n 2. Edit my sample \n 3. Show me another sample"
    #             what_to_do = gets.chomp
    #             exit?
    #             if what_to_do.to_s == "1"
    #                 #save to db << item_type = "food#{party_type_num}"
    #                 return_to_party_choices?
    #             elsif what_to_do == "2"
    #                 #delete array
    #                 #save to db
    #                 return_to_party_choices?
    #             else what_to_do == "3"
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

    # def party_sample(party_type_num)
    #     PartyPlan.new(party_type_num)
    #     puts "music: " +  + ", food:"

    # end 
end