class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10

    elsif happiness < 0
      @happiness = 0

    else
      @happiness = happiness
    end
  end

  def hygiene=(value)

    @hygiene = value

    if value > 10
      @hygiene = 10

    elsif value < 0
      @hygiene = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4 #@ wont work because it would only affect the instance
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3 #@ wont work because it would only affect the instance
    self.happiness += 2
    return "♪ another one bites the dust ♫"

  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -=2
      return "blah blah partisan blah lobbyist"

    elsif topic == "weather"
        self.happiness += 1
        friend.happiness += 1
        return 'blah blah sun blah rain'

      else
        return 'blah blah blah blah blah'
    end
  end
end
