class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name, hygiene = 8)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = hygiene
  end

  def index_range(index)
    if index > 10
      index = 10
    elsif index < 0
      index = 0
    else
      index
    end
  end

  def happiness=(happiness)
    @happiness = index_range(happiness)
  end

  def hygiene=(hygiene)
    @hygiene = index_range(hygiene)
  end

  def scale_range(scale)
    if scale > 7
      true
    else
      false
    end
  end

  def happy?
    scale_range(@happiness)
  end

  def clean?
    scale_range(@hygiene)
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    # @hygiene += 4
    self.hygiene+= 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene-= 3
    self.happiness+= 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness+=3
    friend.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness-=2
      person.happiness-=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness+=1
      person.happiness+=1
      'blah blah sun blah rain'
    else
      "blah blah blah blah blah"
    end
  end

end
