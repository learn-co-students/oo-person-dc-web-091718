require 'pry'

class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

def initialize(name, hygiene = 8)
  @name = name
  @hygiene = hygiene
  @happiness = 8
  @bank_account = 25
end

def happiness=(arg)
  if arg >= 0 && arg <= 10
    @happiness = arg
  elsif arg < 0
    @happiness = 0
  elsif arg > 10
    @happiness = 10
  end
end

def hygiene=(arg)
  if arg >= 0 && arg <= 10
    @hygiene = arg
  elsif arg < 0
    @hygiene = 0
  elsif arg > 10
    @hygiene = 10
  end
end

def clean?
  self.hygiene > 7
end

def happy?
 self.happiness > 7
end

def get_paid(salary)
  self.bank_account += salary
   "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
   self.hygiene-= 3
   self.happiness+= 2
    "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness+= 3
  friend.happiness+= 3
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
