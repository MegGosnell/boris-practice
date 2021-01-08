require_relative 'bike'
class DockingStation
  def initialize(capacity = 20)
    @contents = []
    @capacity = capacity
  end

    def release_bike
        fail "No bikes available" if @contents.empty?
        @contents.pop
end
def dock(bike)
    fail "docking station full" if full?
    @contents << bike
    bike
end
attr_reader :contents
private
def full?
    if @contents.length < @capacity 
        return false 
    else @contents.length == @capacity
        return true 
end 
end
def empty? 
    if @contents.empty?
end 
end
end
