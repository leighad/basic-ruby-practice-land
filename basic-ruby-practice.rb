class MegaGreeter
    attr_accessor :names

    def initialize(names = "Sunflower")
        @names = names    
    end

    def say_hi
        if @names.nil?
            puts "...who are you?"
        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hey there #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    def say_bye
        if @names.nil?
            puts "...who are you again?"
        elsif @names.respond_to?("join")
            puts "Bye for now #{@names.join(", ")}. Hope to see you soon!"
        else
            puts "Bye bye #{@names}. Come back real soon!"
        end
    end
end

if __FILE__ == $0
    #this is new! 
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Sushi Roll"
    mg.say_hi
    mg.say_bye

    mg.names = ["Terrapin", "Spirulina", "BeeBee", "Tankie", "CoCo", "KiKi", "LuLu"]

    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye
end


