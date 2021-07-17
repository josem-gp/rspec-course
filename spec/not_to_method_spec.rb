#some of the uses of the not_to

RSpec.describe 'not_to method' do
    it 'checks for the inverse of a matcher' do
        expect(5).not_to eq(10)
        expect([1,2,3]).not_to equal([1,2,3])
        expect(10).not_to be_odd
        expect([1,2,3]).not_to be_empty

        expect(nil).not_to be_truthy

        expect('Philadelphia').not_to start_with('car')
        expect('Philadelphia').not_to end_with('city')

        expect([:a, :b, :c]).not_to include(:d)

        expect { 11 / 3 }.not_to raise_error
        # expect { 11 / 3 }.not_to raise_error(NameError) #it is better not to check for an specific error when using not_to since it risks to give false positives
    end
end