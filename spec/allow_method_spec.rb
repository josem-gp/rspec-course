# allows us to pair a given method with a returned value

RSpec.describe 'allow method review' do
    it 'can customize return value for methods on doubles' do
        calculator = double
        allow(calculator).to receive(:add).and_return(15)

        expect(calculator.add).to eq(15)
    end

    it 'can change one or more methods on a real object' do
        arr = [1,2,3]
        allow(arr).to receive(:sum).and_return(10) #an array has a #sum method with should give 6 in this case. but we are changing it with the allow mehtod and returning whatever we want

        expect(arr.sum).to eq(10)
        
        arr.push(4)
        expect(arr).to eq([1,2,3,4]) #we just change the application of #sum for the testing. the rest of methods work the same as we can see with #push
    end

    it 'can return multiple return values in sequence' do
        mock_array = double
        allow(mock_array).to receive(:pop).and_return(:c, :b, nil) # imagine the array [:b, :c]. we are saying that the first time #pop is called it will return :c, 2º time it will return :b and from then on it will return nil.
        
        expect(mock_array.pop).to eq(:c)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to be_nil
        expect(mock_array.pop).to be_nil
        expect(mock_array.pop).to be_nil
        expect(mock_array.pop).to be_nil
    end
end