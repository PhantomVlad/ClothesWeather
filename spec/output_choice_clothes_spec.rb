require "output_choice_clothes"

describe "OutputChoiceClothes" do
  it "output_clothes" do
    expect(OutputChoiceClothes.print({"Головной убор"=>["Шапка-ушанка", [-20, -5]]})).to eq ["Головной убор - Шапка-ушанка -20..-5"]
  end
end

