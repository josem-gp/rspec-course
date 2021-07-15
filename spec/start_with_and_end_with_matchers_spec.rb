#checks a given object begins or end with one or more values

RSpec.describe 'start_with and end_with matchers' do
    describe 'caterpillar' do
        it 'should check for substring at the beginning or end' do 
            expect(subject).to start_with('cat')
            expect(subject).to end_with('pillar')

            expect(subject).not_to start_with('Cat')
            expect(subject.capitalize).to start_with('Cat')          
        end
        it { is_expected.to start_with('cat') }
        it { is_expected.to end_with('llar') }
    end

    describe [:a, :b, :c, :d] do
        it 'should check for elements at the beginning or end of the array' do
            expect(subject).to start_with(:a)
            expect(subject).to start_with(:a, :b)

            expect(subject).to end_with(:d)
            expect(subject).to end_with(:c, :d)
        end

        it { is_expected.to start_with(:a, :b, :c) }
        it { is_expected.to end_with(:d) }
    end
end