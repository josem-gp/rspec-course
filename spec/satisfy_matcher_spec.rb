# create our own expectations

RSpec.describe 'satisfy matcher' do
    subject { 'racecar' }

    it 'is a palindrome' do
        expect(subject).to satisfy { |value| value == value.reverse } #it checks if the block is true or false
    end

end