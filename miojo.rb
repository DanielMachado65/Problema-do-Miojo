require 'pry'

# frozen_string_literal: true
class Miojo
  def calculate_minimum_time(time, hourglass1, hourglass2)
    init(time, hourglass1, hourglass2)

    return false if permitted?
    return false unless have_solution?

    max_a = remain(@time, @hourglass1, @hourglass2)
    max_b = remain(@time, @hourglass2, @hourglass1)
    
    cooking_time = [max_a*@hourglass1, max_b*@hourglass2].min
  rescue NoMethodError
    return false
  end

  def init(time, hourglass1, hourglass2)
    @time = time.to_i
    @hourglass1 = hourglass1.to_i
    @hourglass2 = hourglass2.to_i
  end

  def have_solution?
    (@time%mdc(@hourglass1, @hourglass2)) == 0
  end

  def permitted?
    (@time > @hourglass1) || (@time > @hourglass2)
  end

  private

  def remain(time, a, b)
    (1..b).each {|i| return i if ((a * i) % b === time)}
  end
  
  def mdc(a, b)
    return 1 if a == b
    if (a == 0) then
      b
    elsif(a > b) then
      mdc(a % b, b)
    else
      mdc(b, a)
    end
  end 
end