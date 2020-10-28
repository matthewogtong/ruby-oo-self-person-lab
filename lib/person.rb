# your code goes here
require 'pry'

class Person

    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
    end

    def take_bath
        hygiene(4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        happiness(2)
        hygiene(-3)
        "♪ another one bites the dust ♫"
    end

    def happiness(amount)
        @happiness += amount
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene(amount)
        @hygiene = @hygiene + amount
        # binding.pry
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def call_friend(friend)
        self.happiness(3)
        friend.happiness(3)
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness(-1) 
            friend.happiness(-1)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness(1)
            friend.happiness(1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

# stella = Person.new("stella")
# felix = Person.new("felix")
# stella.call_friend(felix)