class NameSample

def self.create(name1, name2, name3, name4, name5)
  @random_name = NameSample.new(name1, name2, name3, name4, name5)
end

def self.instance
  @random_name
end

def initialize(name1, name2, name3, name4, name5)
  @name1 = name1
  @name2 = name2
  @name3 = name3
  @name4 = name4
  @name5 = name5
end

def random_name
  [@name1, @name2, @name3, @name4, @name5].sample
end

end