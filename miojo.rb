# frozen_string_literal: tru
class Miojo
  def initialize(attrs)
    @time = attrs[:time].to_i
    @hourglass1 = attrs[:hourglass1].to_i
    @hourglass2 = attrs[:hourglass2].to_i
  end

  def permitted?
    (@time > @hourglass1) || (@time > @hourglass2)
  end

  def calculate_minimum_time
    return 'ampulheta não podem ter o tempo menor do que o tempo do prepararo do miojo' if permitted?

    min = [@hourglass1, @hourglass2].min
    max = [@hourglass1, @hourglass2].max
    min *= 2

    cooking_time = min - max
    "#{cooking_time == @time ? "Pode ser realizado o prepararo e o tempo minimo será: #{min} min" : 'Não é possivel fazer o miojo'}"
  end
end

# running
if ARGV.length == 3
  p Miojo.new({time: ARGV[0],
               hourglass1: ARGV[1],
               hourglass2: ARGV[2]}).calculate_minimum_time
else
  p 'não foi inserido os parametros corretos'
end