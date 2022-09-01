class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
  
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness=8
        @hygiene=8
    end
    def bank_account=(value)
        @balance = value
    end
    def bank_account
        @balance = 25
    end
    def happiness
        @happiness
    end

    def happiness=(value)
        @happiness = value
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end
    def call_friend(person)
    end
    def start_conversation(person, topic)
    objects = [self, person]
    if topic == "politics"
        objects.each { |o| o.happiness -= 2}
        first, second = ["partisan", "lobbyist"]
    elsif topic == "weather"
        objects.each { |o| o.happiness += 1}
        first, second = ["sun", "rain"]
    end
    first ||= "blah"
    second ||= "blah"
    base_string = "blah blah #{first} blah #{second}"
    end
    def hygiene 
        @hygiene
    end
    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy?
        if @happiness  > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7 
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        self.happiness += 1
        "all about the benjamins"
    end

    def work_out
          self.hygiene -= 3
          self.happiness += 2
          "♪ another one bites the dust ♫"
    end

    def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def call_friend(friend)
        [friend, self].each {|o| o.happiness += 3 }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end
end