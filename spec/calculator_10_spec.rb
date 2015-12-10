require 'calculator'

RSpec.describe "Monkey patched Calculator" do
  it 'does screwy math' do
    # monkey patching `Calculator` affects examples that are
    # executed after this one!
    def Calculator.add(x, y)
      x - y
    end

    expect(Calculator.add(5, 10)).to eq(-5)
  end
end