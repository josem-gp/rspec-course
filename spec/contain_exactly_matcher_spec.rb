#an array includes a certain predefined set of elements. 
#it doesnt matter the order but it needs to contain ALL the elements

RSpec.describe 'contain_exactly matcher' do
    subject { [1,2,3] }

    describe 'long form syntax' do
        it 'should check for the presence of all elements' do
            expect(subject).to contain_exactly(1,2,3)
            expect(subject).to contain_exactly(2,1,3)
            expect(subject).to contain_exactly(3,1,2)

            expect(subject).not_to contain_exactly(1,2)
        end
    end

    describe 'short form syntax' do
        it { is_expected.to contain_exactly(1,2,3) }
        it { is_expected.to contain_exactly(2,1,3) }
        it { is_expected.to contain_exactly(3,1,2) }
    end
end