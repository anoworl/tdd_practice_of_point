require './point.rb'

RSpec.shared_examples '正しく値が格納されている' do
  subject { Point.new x, y }

  it { should eq Point.new x, y }
  it { should_not be_nil }
  it '指定されたxが格納されている' do
    expect(subject.x).to eq x
  end
  it '指定されたyが格納されている' do
    expect(subject.y).to eq y
  end
end

RSpec.describe Point do
  context '整数' do
    let(:x) { 3 }
    let(:y) { 4 }

    include_examples '正しく値が格納されている'
  end

  context '浮動小数点' do
    let(:x) { 3.0 }
    let(:y) { 4.0 }

    include_examples '正しく値が格納されている'
  end
end
