require 'pry'
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account, :happiness, :hygiene


    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene =  hygiene
    end

    def to_s
        "$#{@bank_account}"
    end

    def happy?
        if @happiness >= 0 || @happiness <= 10
            if @happiness > 7
                true
            else
                false
            end
        end
    end

    def clean?
        if @hygiene >= 0 || @hygiene <= 10
            if @hygiene > 7
                true
            else
                false
            end
        end
    end

    def happiness=(num)
        @happiness = num
            if @happiness > 10
                @happiness = 10
            elsif @happiness < 0
                @happiness = 0
            end
        end

    def hygiene=(num)
        @hygiene = num
            if @hygiene > 10
                @hygiene = 10
            elsif @hygiene < 0
                @hygiene = 0
            end
        end
    
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene -=3)
        self.happiness=(@happiness +=2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -=2
            person.happiness -=2
            return 'blah blah partisan blah lobbyist' 
        elsif topic == "weather"
            self.happiness +=1
            person.happiness +=1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end 
end
person1 = Person.new("Renier")



# First you need to create a person class that is initialized with a name that cannot be changed.
# Each instance of class Person should be able to remember their name
# Each instance of class Person should start with $25 in their bank accounts
# Each instance of class Person should start with eight happiness points
# Each instance of class Person should start with eight hygiene points
# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# The amount in the bank account should also be able to change, though it has no max or min.