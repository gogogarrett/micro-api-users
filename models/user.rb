class User
  class << self
    def all
      1.upto(10).map {|id| new(id, "#{id}_name") }
    end

    def find(id)
      new(id, "#{id}_name")
    end
  end

  def initialize(id, name)
    @id, @name = id, name
  end

  def age
    (1..100).to_a.sample
  end

  def snippet
    "Howdy bro"
  end

  private
  attr_accessor :id, :name
end
