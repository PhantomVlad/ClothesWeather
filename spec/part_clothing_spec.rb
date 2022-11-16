require "rspec"
require "part_clothing"


describe "PartClothing" do
  it "create_product_name" do
    correct_paths = Dir["#{__dir__}/fixtures/*.txt"]
    file = File.readlines(correct_paths[0], chomp: true)
    file[2] = file[2].delete("()").split.map(&:to_i)
    created_product = PartClothing.new(file[0], file[1], file[2])
    expect(created_product.name).to eq "Шапка-ушанка"
  end

  it "create_product_type" do
    correct_paths = Dir["#{__dir__}/fixtures/*.txt"]
    file = File.readlines(correct_paths[1], chomp: true)
    file[2] = file[2].delete("()").split.map(&:to_i)
    created_product = PartClothing.new(file[0], file[1], file[2])
    expect(created_product.type).to eq "Головной убор"
  end

  it "create_product_temperature" do
    correct_paths = Dir["#{__dir__}/fixtures/*.txt"]
    file = File.readlines(correct_paths[2], chomp: true)
    file[2] = file[2].delete("()").split.map(&:to_i)
    created_product = PartClothing.new(file[0], file[1], file[2])
    expect(created_product.temperature).to eq [15, 30]
  end

end
