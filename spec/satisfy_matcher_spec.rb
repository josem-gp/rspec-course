# create our own expectations

RSpec.describe 'satisfy matcher' do
    subject { 'racecar' }
    # subject { 'racecars' }

    it 'is a palindrome' do
        expect(subject).to satisfy do |value| 
            value == value.reverse
        end #it checks if the block is true or false
    end

    it 'can accept a custom error message' do  
        expect(subject).to satisfy('be a palindrome') do |value| #this creates a personalized message in case of error
            value == value.reverse
        end
    end
end