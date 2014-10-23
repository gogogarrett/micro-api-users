class User
  class << self
    def all
      1.upto(10).map {|id| new(id, "name_#{id}") }
    end

    def find(id)
      new(id, "name_#{id}")
    end
  end

  def initialize(id, name)
    @id, @name = id, name
  end

  private
  attr_accessor :id, :name
end
