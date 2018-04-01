class LolHost

  def self.create
    @lolhost_name = LolHost.new
  end
  
  def self.instance
    @random_name
  end

  def initialize
    @names = ["Serena", "Josu", "Terry", "Lewis", "Laura"]
  end

  def pick_lolhost
    @names.sample
  end

end