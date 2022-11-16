class Thing
  attr_reader :name, :type, :temperature_span

  def initialize(name, type, temperature_span)
    @name = name
    @type = type
    @temperature_span = temperature_span.map(&:to_i)
  end

  def to_s
    "#{@type}: #{@name} - #{@temperature_span[0]}...#{@temperature_span[1]}"
  end
end
