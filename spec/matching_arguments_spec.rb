# how can we customize the return value of a changed method depending of the argument on which that method is invoked
#here we create a double mimicking an array and how it should react when a method is called


RSpec.describe 'matching arguments' do
    it 'can return different values depending on the argument' do
        three_element_array = double # [1,2,3]

        allow(three_element_array).to receive(:first).with(no_args).and_return(1)
        allow(three_element_array).to receive(:first).with(1).and_return([1])
        allow(three_element_array).to receive(:first).with(2).and_return([1,2])
        allow(three_element_array).to receive(:first).with(be >= 3).and_return([1,2,3])

        expect(three_element_array.first).to eq(1)
        expect(three_element_array.first(1)).to eq([1])
        expect(three_element_array.first(2)).to eq([1,2])
        expect(three_element_array.first(3)).to eq([1,2,3])
        expect(three_element_array.first(1000)).to eq([1,2,3])
    end
end