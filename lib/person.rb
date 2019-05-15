require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene, :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        # binding.pry
    end
    # binding.pry

    def happiness=(num)
        @happiness = num
        # sets min and max to 0 and 10 respectively
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def bank_account=(num)
        @bank_account = num
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        puts "Hi #{person.name}! It's #{@name}. How are you?"
        "Hi #{person.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            puts "blah blah partisan blah lobbyist"
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            puts "blah blah sun blah rain"
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

# binding.pry
# 0

bob = Person.new("Bob")
sally = Person.new("Sally")

puts "Bob is #{bob.happiness} points happy."

bob.call_friend(sally)
bob.start_conversation(sally, "")

puts "Bob is #{bob.happiness} points happy."
