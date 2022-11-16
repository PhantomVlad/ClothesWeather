require "rspec"
require "collection_clothes"
require "part_clothing"

describe "CollectionClothes" do
  it "checking an array of things" do
    correct_paths = Dir["#{__dir__}/fixtures/*.txt"]
    collection_clothes = CollectionClothes.new
    file = File.readlines(correct_paths[0], chomp: true)
    file[2] = file[2].delete("()").split.map(&:to_i)
    expect(collection_clothes.add_clothes(PartClothing.new(file[0], file[1], file[2]))).to eq [["Шапка-ушанка", [-20, -5]]]
  end

  it "choice_clothes" do
    correct_paths = Dir["#{__dir__}/fixtures/*.txt"]
    collection_clothes = CollectionClothes.new
    file = File.readlines(correct_paths[0], chomp: true)
    file[2] = file[2].delete("()").split.map(&:to_i)
    collection_clothes.add_clothes(PartClothing.new(file[0], file[1], file[2]))
    expect(collection_clothes.choice_clothes(-20)).to eq ({"Головной убор"=>["Шапка-ушанка", [-20, -5]]})
  end

end

