require_relative 'simplemath.rb'

describe SimpleMath do
  it 'shows question' do
    output = StringIO.new

    described_class.show(output,'question')

    expect(output.string).to eq("question\n")
  end
end
