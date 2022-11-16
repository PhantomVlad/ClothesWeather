class CollectionClothes
  def initialize(clothes)
    @clothes = clothes
  end

  def choice_clothes(input_temperature)
    clothes_output =
      @clothes.group_by(&:type).values.map do |clothes_one_type|
        (clothes_one_type.shuffle.select { |thing| Range.new(*thing.temperature_span).include?(input_temperature) })[0]
      end
    clothes_output.compact
  end
end
