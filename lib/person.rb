class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

def initialize(name)
  @name = name
  @hygiene = 8
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
  @hygiene > 7
end

def happy?
  @happiness > 7
end

end
