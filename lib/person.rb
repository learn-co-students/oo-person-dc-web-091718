class Person
  
  attr_reader :name
  attr_accessor :bank_account
  attr_reader :happiness
  attr_reader :hygiene
  
  def initialize(name)
    @name = name
    @bank_account=25
    @happiness=8
    @hygiene=8
  end
  
  def happiness=(value)
    @happiness=value
    @happiness=10 if @happiness>10
    @happiness=0 if @happiness<0
  end
  
  def hygiene=(value)
    @hygiene=value
    @hygiene=10 if @hygiene>10
    @hygiene=0 if @hygiene<0
  end
  
  def clean?
    @hygiene>7
  end
  
  def happy?
    @happiness>7
  end
  
  def get_paid(salary)
    @bank_account+=salary
    'all about the benjamins'
  end
  
  def take_bath
    self.hygiene+=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene-=3
    self.happiness+=2
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    self.happiness+=3
    friend.happiness+=3
    "Hi #{friend.name}! It's #{name}. How are you?"
  end
  
  def start_conversation(person_other, topic)
    if topic == 'politics'
      self.happiness-=2
      person_other.happiness-=2
      return 'blah blah partisan blah lobbyist'
    end
    if topic == 'weather'
      self.happiness+=1
      person_other.happiness+=1
      return "blah blah sun blah rain"
    end
    return "blah blah blah blah blah"
  end
end