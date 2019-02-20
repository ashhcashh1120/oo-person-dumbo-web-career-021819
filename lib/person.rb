
class Person
    attr_reader :name
    def initialize(name)
      @name = name
      @happiness = 8
      @hygiene = 8
      @balance = 25
    end

    def bank_account
      @balance
    end

    def bank_account=(balance)
      @balance = balance
    end

    def happiness
      @happiness
    end

    def happiness=(happy_lvl)
      @happiness = happy_lvl
      if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      end
      @happiness
    end

    def hygiene
      @hygiene
    end

    def hygiene=(hyg_lvl)
      @hygiene = hyg_lvl
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      end
      @hygiene
    end

    def happy?
      @happiness > 7 ? true : false
    end

    def clean?
      @hygiene > 7 ? true : false
    end

    def get_paid(salary)
      @balance += salary
      return 'all about the benjamins'
    end

    def take_bath
      self.hygiene += 4
      self.hygiene > 10 ? self.hygiene = 10 : self.hygiene
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene -= 3
      self.hygiene < 0 ? self.hygiene = 0 : self.hygiene
      self.happiness += 2
      self.happiness > 10 ? self.hygiene = 10 : self.hygiene
      return "♪ another one bites the dust ♫"
    end

    def call_friend(friend_name)
      self.happiness += 3
      friend_name.happiness += 3
      self.happiness > 10 ? self.happiness = 10 : self.happiness
      friend_name.happiness > 10 ? friend_name.happiness = 10 : friend_name.happiness
      return "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(convo_striker, topic)
      if topic == "politics"
        convo_striker.happiness -= 2
        self.happiness -= 2
        convo_striker.happiness < 0 ? convo_striker.happiness = 0 : convo_striker.happiness
        self.happiness < 0 ? self.happiness = 0 : self.happiness
        return 'blah blah partisan blah lobbyist'
      elsif topic == "weather"
        convo_striker.happiness += 1
        self.happiness += 1
        convo_striker.happiness > 10 ? convo_striker.happiness = 10 : convo_striker.happiness
        self.happiness > 10 ? self.happiness = 10 : self.happiness
        return 'blah blah sun blah rain'
      else
        return 'blah blah blah blah blah'
      end
    end




end
