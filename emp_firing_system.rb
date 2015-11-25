class Employee

  def initialize(id, name, rating, salary)
    @id = id
    @name = name
    @salary = salary
    @rating = rating
  end

end

class FiringSystem
  def init_emps()
    reps = []
    rep_1 = Employee.new(1,"Nithin",5,10000)
    rep_2 = Employee.new(2,"Bharadhwaj",3,70000)
    rep_3 = Employee.new(3,"Tom",1,40000)
    rep_4 = Employee.new(4,"Jerry",3,60000)
    rep_5 = Employee.new(5,"Mac",2,70070)
    rep_6 = Employee.new(6,"Pac",4,9000)
    rep_7 = Employee.new(7,"Tek",3,7080)
    rep_8 = Employee.new(8,"Tiger",1,7060)
    rep_9 = Employee.new(9,"Meow",4,1234)
    rep_10 = Employee.new(10,"Chulla",2,67)

    reps = reps.push(rep_1,rep_2,rep_3,rep_4,rep_5,rep_6,rep_7,rep_8,rep_9,rep_10)
    h = {}
    reps.map { |i| h[i] = i.instance_variable_get(:@rating) }
    reps = h.sort_by {|k,v| v}.reverse.map {|i| i[0]}

    puts "Enter the number of employees you wanna fire?"
    input = gets.chomp
    reps.pop(input.to_i)
    reps.group_by {|i| i.instance_variable_get(:@rating) }.map {|i| i[1].map{ |j| j.instance_variable_get(:@salary) }}
    reps = reps - reps.group_by {|i| i.instance_variable_get(:@rating) }.map {|i|  i[1][0] }
    reps.map {|i| p i}

  end

  
end

obj = FiringSystem.new
obj.init_emps


