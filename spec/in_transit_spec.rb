require 'in_transit'

describe InTransit do

  it 'is not in transit' do
    expect(subject.in_journey?).to eq(false)
  end

  it { is_expected.to respond_to :touch_in } 

  it { is_expected.to respond_to :touch_out } 

  it 'it activates the card when touched in' do 
    subject.touch_in
    expect(subject.in_journey?).to eq(true)
  end

  it 'it deactivates the card when touched out' do 
    subject.touch_in
    subject.touch_out
    expect(subject.in_journey?).to eq(false)
  end


end 