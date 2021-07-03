# your code goes here
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

 
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  
  def hygiene=(points)
    @hygiene = points
    if @hygiene > 10 
      @hygiene = 10
    end
    if @hygiene < 0 
      @hygiene = 0
    end
  end




  


  def clean?
    @hygiene > 7
      
    
  end
  


  def happiness=(points)
    @happiness = points
    if @happiness > 10 
      @happiness = 10
    end
    if @happiness < 0 
      @happiness = 0
    end
  end


  def happy?
    @happiness > 7
    
  end
  
  def get_paid(amount)
    @bank_account += amount
    return "all about the benjamins"
    
  end
  
  def take_bath

    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  
  def work_out
    self.happiness += 2
    self.hygiene -= 3

    return "♪ another one bites the dust ♫"
  end
  # passing in an instance of Person, named friend
  def call_friend(friend)
    #add 3 to this person's happiness (self)
    self.happiness += 3
    #add 3 to the friend's happiness
    friend.happiness += 3

    #return phone call string
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end 
  
  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end 
  
end